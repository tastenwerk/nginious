App.Router.map ->
  @resource 'dashboard.index', path: '/'
  @resource 'sessions', ->
    @route 'new'
    @route 'logout'
    @route 'forgot_password'
    @route 'signup'
  @resource 'accounts', ->
    @route 'index'
    @route 'plans'
    @route 'organizations'
    @route 'invoices'
    @route 'users'
    @route 'users.new', path: '/users/new'

  @resource 'crm.index', path: '/crm'

