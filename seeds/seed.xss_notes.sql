-- psql -U postgres -d noteful -f ./seeds/seed.xss_notes.sql
-- heroku pg:psql then hit enter to connect to database
-- then copy and paste everything below and hit enter...

INSERT INTO notes (name, content, folderid)

VALUES 
(
'Injection post!',
'This text contains an intentionally broken image <img src="https://url.to.file.which/does-not.exist" onerror="alert(document.cookie); alert(''you just got pretend hacked! oh noes!'');">. The image will try to load, when it fails, <strong>it executes malicious JavaScript</strong>',
1
);