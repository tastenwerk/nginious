Em.I18n.availableTranslations ||= {}
Em.I18n.availableTranslations.de ||= {}

Em.merge Em.I18n.availableTranslations.de,
  alias: 'Alias'
  username_or_email: 'Benutzername oder Email'
  firstname: 'Vorname'
  lastname: 'Nachname'
  password: 'Passwort'
  login: 'Anmelden'
  logout: 'Abmelden'
  no_account_yet: 'Noch kein Konto?'
  back_to_login: 'Zurück zum Login'
  signup: 'Kostenlos Registrieren'
  confirmation_code: 'Bestätigungs-Code'
  confirmation_code_has_been_sent: 'Ein Bestätigungs-Code wurde an die angegebene Email-Adresse versandt. Bitte prüfe deinen Posteingang und gib den in der Email angeführten 4-stelligen Code hier ein'
  forgot_your_password: 'Passwort vergessen?'
  send_link: 'Email senden'
  reset_password: 'Passwort zurücksetzen'
  reset_password_desc: 'Du kannst jetzt ein neues Passwort wählen. Bitte beachte die Kriterien (mind. 1 Großbuchstabe, mind. 1 Kleinbuchstabe, mind. 1 Ziffer)'
  forgot_password_desc: 'Du hast dein Passwort vergessen? Wir wissen es auch nicht. Es liegt verschlüsselt auf unserem Server gespeichert. Gib deine Email Adresse an, und wir senden dir einen Link zu, mit dem du dein Passwort neu setzen kannst.'
  link_sent: 'Ein Link wurde an {{email}} versandt. Bitte prüfe deinen Posteingang und klick auf den in der Email enthaltenen Link'
  continue: 'Weiter'
  register: 'Registrieren'
  username: 'Alias'
  private: 'Privat'
  agree_policies: 'Ich bin mit den Allgemeinen Geschäftsbedingungen einverstanden'
  select_language: 'Sprache wählen'
  
  save: 'Speichern'
  cancel: 'Abbrechen'
  saved: '{{name}} wurde gespeichert'

  cancel_edit_entry: 'Bearbeiten abbrechen'
  edit_entry: 'Eintrag bearbeiten'
  entry_saved: 'Eintrag gespeichert'

  superuser_actions: 'Superuser Aktionen'

  new: 'Neu'
  name: 'Name'
  created_at: 'Erstellt am'
  email: 'Email'
  phone: 'Mobiltelefon'
  organization: 'Organisation'
  current_organization: 'Aktuelle Organisation'

  users:
    title: 'Benutzerkonten'
    online: 'Benutzer online'
    quota: 'Quota'
    allowed: 'Max. Benutzer (Quota)'
    new_0: 'Neuer'
    new_1: 'Benutzer'

  groups:
    title: 'Gruppen'
    largest: 'Größte Gruppe'
    new_0: 'Neue'
    new_1: 'Gruppe'

  organizations:
    further: '{{count}} weitere Organisationen'
    show_all: 'Alle Organisationen anzeigen'

  organization:
    edit: 'Organisation bearbeiten'
    name: 'Name der Organisation'
    create_new: 'Neue Organisation erstellen'
    new_0: 'Neue'
    new_1: 'Organisation'
    general: 'Allgemein'
    fqdn: 'Domäne (FQDN)'

  account:
    personal: 'Angaben zur Person'
    contact_info: 'Kontaktinformationen'
    general: 'Allgemein'
    privacy: 'Privatsphäre'
    administration: 'Administration'
    groups: 'Gruppen'
    create_account: 'Konto erstellen'
    edit: 'Konto bearbeiten'
    suspend_login: 'Suspendieren (Login verbieten)'
    admin:
      users: 'Konten verwalten'
      organizations: 'Organisationen'
  errors:
    email_required: 'Email Adresse erforderlich'
    email_exists: 'Die Email Adresse {{email}} ist schon registriert'
    email_unknown: 'Die Email Adresse {{email}} ist uns nicht bekannt'
    organization_exists: 'Diese Organisation ist bereits registriert'
    organization_name_required: 'Organisationsname muss vergeben werden'
    not_an_email_address: 'Die angegebene Email Adresse ist ungültig'
    organization_required: 'Wenn du dich als Organisation registrieren möchtest, musst du auch einen Organisationsnamen angeben. Ansonsten wähle "Privat"'
    password_required: 'Bitte wähle ein Passwort'
    password_policies_not_fulfilled: 'Das Passwort entspricht nicht den Kritierien:<br><ul><li>mindestens 6 Zeichen lang</li><li>Enthält mindestens einen Großbuchstaben</li><li>Enthält midnestens einen Kleinbuchstaben</li><li>Enthält mindestens eine Zahl oder ein Sonderzeichen</li></ul>'
    accept_terms: 'Du musst unsere Geschäftsbedingungen akzeptieren, um fortzufahren'
    invalid_code: 'Der angegebene Code ist falsch'
    key_invalid_or_expired: 'Der Schlüssel ist falsch oder abgelaufen. Bitte wiederhole den Vorgang'
    code_required: 'Bitte gib den Code ein, der dir in der Email zugesandt wurde'
    unkown: 'Unbekannter Fehler! Bitte kontaktiere den Support'
