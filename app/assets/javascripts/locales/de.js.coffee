return if window.LANG != 'de'
Em.I18n.translations ||= {}
Em.merge( Em.I18n.translations, {
  apps:
    'caminio': 'Dashboard'
    'crm': 'CRM'
  'email_or_username': 'Email oder Kontoname'
  'email_address': 'Email Address'
  'username': 'Pseudonym'
  'password': 'Passwort'
  'firstname': 'Vorname'
  'lastname': 'Nachname'
  'street': 'Straße'
  'city': 'Stadt'
  'zip': 'PLZ'
  'country': 'Land'
  'state': 'Bundesland'
  'email': 'Email'
  'phone': 'Telefon'
  'action_for': 'Aktion für'
  'records': 'Einträge'
  'please_select': 'Bitte wählen'
  'enter_text_to_add': 'Zum anlegen neuer Einträge, schreib den Text und [Eingabetaste]'
  'add_item': '<strong>{{name}}</strong> anlegen'
  'select_country': 'Land wählen'
  'language': "Sprache"
  'invalid_username_or_password': 'Ungültige Login-Informationen. Überprüfe Email (oder Kontoname) und Passwort. Passwort vergessen? <a class="alert-link" href="#/sessions/forgot_password">Hier klicken</a>.'
  'login': 'Anmelden'
  'forgot_password': 'vergessen'
  'forgot_info': 'Please enter your email address. An email will be sent to that address with further instructions on how to reset your password'
  'my_apps': 'Meine Anwendungen'
  'account_settings': 'Kontoeinstellungen'
  'messages': 'Nachrichten'
  'edit_account': 'Konto bearbeiten'
  'edit': 'Bearbeiten'
  'delete': 'Löschen'
  'logout': 'Abmelden'
  'cancel': 'Abbrechen'
  'cancelled': 'Abgebrochen'
  'save': 'Speichern'
  'invite': 'Einladen'
  'invited': '{{email}} wurde eine Einladung zur {{organisation}} gesendet'
  'invitation_failed': '{{email}} konnte keine Einladung versendet werden'
  'create': 'Erstellen'
  'created': '<strong>{{name}}</strong> wurde erfolgreich erstellt'
  'creation_failed': '<strong>{{name}}</strong> konnte nicht erstellt werden'
  'proceed_and_dismiss': 'Fortfahren und Verwerfen'
  'send_email': 'Email senden'
  'error.email_unknown': 'The email address <em>{{email}}</em> is unknown'
  'signup_for_free': 'kostenlos registrieren'
  'signup_info_1': 'Ich erkläre mich mit den'
  'signup_info_2': 'AGB von TASTENWERK e.U.'
  'signup_info_3': 'einverstanden.'
  'or': 'oder'
  'register_as': 'Registrieren als'
  'company_or_organization': 'Firma / Organisation'
  'private_person': 'Privatperson'
  'company_name': 'Firmenname'
  'errors.accept_terms': 'AGBs müssen akzeptiert werden'
  'errors.required.company_name': 'Firmenname erforderlich, wenn als Firma registriert werden soll'
  'errors.required.email': 'Email Adresse erforderlich'
  'errors.required.password': 'Passwort erforderlich'
  'errors.not_an_email_address': 'The entered email address is invalid'
  'errors.password_policies_not_fulfilled': 'Das Passwort muss mind. 6 Zeichen lang sein und aus mind. einem Großbuchstaben, einem Kleinbuchstaben und einer Zahl bestehen'
  'terms.short_title': 'Allgemeine Geschäftsbedingungen'
  'terms.title': 'Allgemeine Geschäftsbedingungen für die Nutzung von camin.io'
  'terms.text': '<h2>1. Gegenstand und Geltungsbereich dieser AGB</h2><p>Diese AGB regeln die Rechte und Pflichten im Zusammenhang mit der Nutyung der Dienstleistungen des Anbieters TASTENWERK e.U. / Österreich, Graz, Lendkai 83/1 (nachfolgend: Dienstanbieter) und des Nutzers im Zusammenhang mit der Inanspruchnahme des Dienstes, der unter der Internetadresse http://camin.io zugänglich gemacht ist.</p><p>Es gelten ausschließlich die AGB des Dienstanbieters. Entgegenstehende oder von diesen AGB abweichende Bedingungen des Nutzers werden vom Dienstanbieter nicht anerkannt, es sei denn, dass ihrer Geltung ausdrücklich schriftlich zugestimmt wurde. Diese AGB gelten auch dann, wenn der Dienstanbieter in Kenntnis entgegenstehdner oder von diesen AGB abweichenden Bedingungen des Nutzers seine Leistungen an ihn vorbehaltlos erbringt.</p><p>Sofern nachfolgend der Begriff der "Internetseite des Dienstanbieters" verwendet wird, ist die Internetseite bzw. die Internetseiten des Dienstanbieters gemeint, unter denen der Dienst i.S.d Absates 1 vom Dienstanbieter im Internet allgemein zugänglich gemacht wird.</p><h2>Vertragsschluss</h2><p>Ein Vertrag kommt - soweit nicht anders ausdrücklich individuell vereinbart - erst mit erfolgreichem Abschluss des Registrierungsvorgangs durch eine Bestätigung des Diensteanbieters gegenüber dem Nutzer in Textform (E-Mail) zustande.</p>'
  'hi': 'Hallo'
  'last_login': 'Letztes Mal online'
  'dashboard.no_upcoming_appointments': 'Keine anstehenden Termine'
  'search.label': 'Label'
  'search.type': 'Typ'
  'search.date_range': 'Zeitraum'
  'search.term': 'Suchbegriff'
  'unsaved_content': 'Fortfahren und Verwerfen?'
  'unsaved_content_desc': 'Nicht alle Elemente auf dieser Webseite wurden gespeichert. Möchtest du diese verwerfen und fortfahren oder vorher speichern?'
})
