CREATE TABLE website.content (
  name VARCHAR(50) NOT NULL,
  value TEXT DEFAULT NULL,
  description VARCHAR(500) DEFAULT NULL,
  PRIMARY KEY(name)
);
CREATE UNIQUE INDEX UNIQ_3211DD035E237E06 ON website.content (name);

ALTER TABLE website.content
  OWNER TO admin;
GRANT ALL ON TABLE website.content TO admin;
GRANT ALL ON TABLE website.content TO ogam;

INSERT INTO website.content VALUES
  ('homepage.intro', '', 'Texte d''introduction sur la page d''accueil'),
  ('homepage.image', '', 'Image d''illustration sur la page d''accueil'),
  ('homepage.links.title', '', 'Titre du bloc de liens publics sur la page d''accueil'),
  ('homepage.link.1', '{"anchor":"","href":"","target":"_self"}', 'Lien public sur page accueil'),
  ('homepage.link.2', '{"anchor":"","href":"","target":"_self"}', 'Lien public sur page accueil'),
  ('homepage.link.3', '{"anchor":"","href":"","target":"_self"}', 'Lien public sur page accueil'),
  ('homepage.link.4', '{"anchor":"","href":"","target":"_self"}', 'Lien public sur page accueil'),
  ('homepage.link.5', '{"anchor":"","href":"","target":"_self"}', 'Lien public sur page accueil'),
  ('homepage.link.6', '{"anchor":"","href":"","target":"_self"}', 'Lien public sur page accueil'),
  ('homepage.link.7', '{"anchor":"","href":"","target":"_self"}', 'Lien public sur page accueil'),
  ('homepage.link.8', '{"anchor":"","href":"","target":"_self"}', 'Lien public sur page accueil'),
  ('homepage.link.9', '{"anchor":"","href":"","target":"_self"}', 'Lien public sur page accueil'),
  ('homepage.link.10', '{"anchor":"","href":"","target":"_self"}', 'Lien public sur page accueil'),
  ('homepage.doc.1', '{"anchor":"","file":""}', 'Document public sur page accueil'),
  ('homepage.doc.2', '{"anchor":"","file":""}', 'Document public sur page accueil'),
  ('homepage.doc.3', '{"anchor":"","file":""}', 'Document public sur page accueil'),
  ('homepage.doc.4', '{"anchor":"","file":""}', 'Document public sur page accueil'),
  ('homepage.doc.5', '{"anchor":"","file":""}', 'Document public sur page accueil'),
  ('homepage.doc.6', '{"anchor":"","file":""}', 'Document public sur page accueil'),
  ('homepage.doc.7', '{"anchor":"","file":""}', 'Document public sur page accueil'),
  ('homepage.doc.8', '{"anchor":"","file":""}', 'Document public sur page accueil'),
  ('homepage.doc.9', '{"anchor":"","file":""}', 'Document public sur page accueil'),
  ('homepage.doc.10', '{"anchor":"","file":""}', 'Document public sur page accueil'),
  ('homepage.private.links.title', '', 'Titre du bloc de liens privés sur la page d''accueil'),
  ('homepage.private.link.1', '{"anchor":"","href":"","target":"_self"}', 'Lien privé sur page accueil'),
  ('homepage.private.link.2', '{"anchor":"","href":"","target":"_self"}', 'Lien privé sur page accueil'),
  ('homepage.private.link.3', '{"anchor":"","href":"","target":"_self"}', 'Lien privé sur page accueil'),
  ('homepage.private.link.4', '{"anchor":"","href":"","target":"_self"}', 'Lien privé sur page accueil'),
  ('homepage.private.link.5', '{"anchor":"","href":"","target":"_self"}', 'Lien privé sur page accueil'),
  ('homepage.private.link.6', '{"anchor":"","href":"","target":"_self"}', 'Lien privé sur page accueil'),
  ('homepage.private.link.7', '{"anchor":"","href":"","target":"_self"}', 'Lien privé sur page accueil'),
  ('homepage.private.link.8', '{"anchor":"","href":"","target":"_self"}', 'Lien privé sur page accueil'),
  ('homepage.private.link.9', '{"anchor":"","href":"","target":"_self"}', 'Lien privé sur page accueil'),
  ('homepage.private.link.10', '{"anchor":"","href":"","target":"_self"}', 'Lien privé sur page accueil'),
  ('homepage.private.doc.1', '{"anchor":"","file":""}', 'document privé sur page accueil'),
  ('homepage.private.doc.2', '{"anchor":"","file":""}', 'document privé sur page accueil'),
  ('homepage.private.doc.3', '{"anchor":"","file":""}', 'document privé sur page accueil'),
  ('homepage.private.doc.4', '{"anchor":"","file":""}', 'document privé sur page accueil'),
  ('homepage.private.doc.5', '{"anchor":"","file":""}', 'document privé sur page accueil'),
  ('homepage.private.doc.6', '{"anchor":"","file":""}', 'document privé sur page accueil'),
  ('homepage.private.doc.7', '{"anchor":"","file":""}', 'document privé sur page accueil'),
  ('homepage.private.doc.8', '{"anchor":"","file":""}', 'document privé sur page accueil'),
  ('homepage.private.doc.9', '{"anchor":"","file":""}', 'document privé sur page accueil'),
  ('homepage.private.doc.10', '{"anchor":"","file":""}', 'document privé sur page accueil');
