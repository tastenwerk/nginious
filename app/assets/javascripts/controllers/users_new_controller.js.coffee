Caminio.UsersNewController = Ember.ObjectController.extend

  needs: ['application', 'sessions']

  actions:

    save: (callback, scope)->
      # click-edit-form redirects here as well
      # we don't want to save just because a value was changed in a new
      # model
      if typeof(callback) == 'function'
        return callback.call(scope)
      if Em.isEmpty(@get('user.email')) || !@get('user.email').match(/.+@.+/)
        return noty( type: 'error', text: Em.I18n.t('errors.email_required'))
      @get('user')
        .save()
        .then =>
          Em.$.noty.closeAll()
          noty( type: 'success', text: Em.I18n.t('saved', name: @get('content.name')), timeout: 2000 )
          @transitionToRoute 'users.index'
