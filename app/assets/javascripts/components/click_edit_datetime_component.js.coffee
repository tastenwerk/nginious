Caminio.ClickEditDatetimeComponent = Ember.Component.extend

  saveClickComponent: (e)->
    return unless $('.editing-click-form').length
    return if $(e.target).hasClass('.editing-click-form')
    return if $(e.target).closest('.editing-click-form').length
    @send 'saveChanges'

  init: ->
    @_super()
    @set('origValue', '')
    @set('origValue', @get('value')) unless Em.isEmpty(@get('value'))
    @set('value','') if Em.isEmpty(@get('value'))
    
    $(document)
      .off('click', $.proxy(@saveClickComponent, @))
      .on('click', $.proxy(@saveClickComponent, @))

    if @get('focus')
      @set('editValue', true)
      Caminio.set('currentClickEdit', @)
      Em.run.later (-> @$('input:first').focus()), 500

  saveActionName: 'save'

  timeValue: ((key,val)->
    @set 'value', moment().toDate() unless @get('value')
    if arguments.length > 1
      @set 'value', moment(@get('value')).hours(val.split(':')[0]).minutes(val.split(':')[1]).toDate()
    moment(@get('value')).format('HH:mm')
  ).property 'value'

  dateValue: ((key,val)->
    @set 'value', moment().toDate() unless @get('value')
    hours = moment(@get('value')).hours()
    minutes = moment(@get('value')).minutes()
    if arguments.length > 1
      @set 'value', moment(val, 'DD-MM-YYYY').hours(hours).minutes(minutes).toDate()
    moment(@get('value')).format('DD-MM-YYYY')
  ).property 'value'

  monthValue: (->
    moment(@get('value')).format('MMMM')
  ).property 'value'

  dayNum: (->
    moment(@get('value')).format('DD')
  ).property 'value'

  yearValue: (->
    moment(@get('value')).format('YYYY')
  ).property 'value'

  formattedDate: (->
    "#{moment(@get('value')).format('dddd, HH:mm')} #{Em.I18n.t('o_clock')}"
  ).property 'value'

  editValue: false
  valueSaved: false
  valueSaving: false

  labelTranslation: Em.computed ->
    Em.I18n.t( @get('label') )

  editValueObserver: (->
    Em.run.later =>
      @$('input[type=text]').focus()
    , 10
  ).observes 'editValue'

  hasChanges: Em.computed ->
    @get('origValue') != @get('value')
  .property 'origValue', 'value'

  valueObserver: (->
    return if @get('origValue') == @get('value')
  ).observes 'value'

  saveCallback: ->
    @set('editValue',false)
    @set('valueSaving', false)
    @set('valueSaved', true)
    Ember.run.later =>
      @set('valueSaved',false)
      @set('origValue', @get('value'))
    , 2000

  didInsertElement: ->
    @$('.datepicker').pikaday
      firstDay: 1
      format: 'DD-MM-YYYY'
      minDate: new Date()
      i18n: Pikaday.lang

    @$('.timepicker').timeEntry
      timeSteps: [1, 15, 0]

  actions:

    saveChanges: ->
      if @get 'content.isNew'
        return @set 'editValue', false
      @set('valueSaving', true)
      @get('parentController').send(@get('saveActionName'), @saveCallback, @)

    cancelEdit: ->
      @set('editValue',false)
      @set('value', @get('origValue'))
      Caminio.get('currentClickEdit', null)

    edit: ->
      return if @get('editValue')
      other = Caminio.get('currentClickEdit') 
      if other && !other.isDestroyed && other != @
        other.set('editValue',false)
      @set('editValue', true)
      Caminio.set('currentClickEdit', @)
      Em.run.later =>
        @$('input:first').focus()
      , 300
