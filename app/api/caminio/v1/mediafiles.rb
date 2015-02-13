module Caminio

  module V1

    class Mediafiles < Grape::API

      default_format :json
      helpers Caminio::AuthHelper

      params do
        requires :file
        requires :parent_id
        requires :parent_type
        optional :link_only, type: Boolean
      end
      post '/' do
        authenticate!
        mf = Mediafile.new parent_id: params.parent_id, parent_type: params.parent_type.camelize
        mf.file = params.file
        # DAVID, please review: if save fails, you are not returning anything
        # tests fail!
        # if mf.save
        #   params.link_only ? { link: mf.file.url(:original) } : mf
        # end
        #
        # MY SOLUTION HERE:
        return error!({error: 'SavingFailed', details: mf.errors.inspect}) unless mf.save
        params.link_only ? { link: mf.file.url(:original) } : mf
      end

      params do
        optional :links_only, type: Boolean
        requires :parent_id
        requires :parent_type
      end
      get '/' do
        mediafiles = Mediafile.unscoped.where( is_public: true, parent_id: params.parent_id, parent_type: params.parent_type )
        if params.links_only
          return mediafiles.map{ |mf| mf.file.url(:original) }
        end
        mediafiles
      end

      params do
        optional :src
      end
      post '/custom_remove' do
        authenticate!
        id = params.src.split('/files/').last
        id = id.split('/original').first
        id = id.gsub('/','')
        mediafile = Mediafile.find id
        mediafile.destroy
      end

      params do
        requires :mediafile, type: Hash do
          optional :file_file_name
          optional :copyright
          optional :description
        end
      end
      put '/:id' do
        authenticate!
        error!('not_found', 404) unless mediafile = Mediafile.where(id: params.id).first
        error!('failed', 500) unless mediafile.update declared(params)[:mediafile]
        mediafile.reload
      end

      delete '/:id' do
        authenticate!
        error!('not_found', 404) unless mediafile = Mediafile.where(id: params.id).first
        error!('failed', 500) unless mediafile.destroy
        {}
      end

    end
  end
end