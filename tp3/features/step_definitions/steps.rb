require 'json'

# Chargement du contenu du fichier Markdown
Given('un fichier markdown {string}') do |file|
  @file_path = File.join('features', 'markdown', file)
  raise "Le fichier #{file} est introuvable" unless File.exist?(@file_path)
end

When('je lis le contenu du fichier') do
  @file_content = File.read(@file_path)
end

Then('le fichier doit contenir le nom du sprint') do
  raise 'Nom du sprint introuvable' unless @file_content.match?(/^### 1\. Nom du Sprint/)
end

Then('le fichier doit mentionner au moins une personne dans l\'équipe de développement') do
  dev_team_section = @file_content.match(/^### 4\. Équipe de développement.*?((?:- \[x\].*?)+)/m)
  raise 'Aucune personne trouvée dans l\'équipe de développement' unless dev_team_section && !dev_team_section[1].strip.empty?
end

Then('le fichier doit contenir au moins un objectif') do
  objectives_section = @file_content.match(/^### 1\. Objectifs prévus.*?((?:- .*?)+)/m)
  raise 'Aucun objectif trouvé' unless objectives_section && !objectives_section[1].strip.empty?
end

Then('le fichier doit indiquer un nombre de user stories total de {int}') do |total_stories|
  raise "Nombre total de user stories incorrect (attendu: #{total_stories})" unless @file_content.match?(/^### 1\. Nombre de user story.*\n- Nombre de user story : #{total_stories}$/m)
end

Then('le fichier doit indiquer un nombre de user stories complétées de {int}') do |completed_stories|
  raise "Nombre de user stories complétées incorrect (attendu: #{completed_stories})" unless @file_content.match?(/^### 1\. Nombre de user story.*\n- Nombre de user story complétée pendant ce sprint : #{completed_stories}$/m)
end

Then('le fichier doit indiquer un nombre de user stories restantes de {int}') do |remaining_stories|
  raise "Nombre de user stories restantes incorrect (attendu: #{remaining_stories})" unless @file_content.match?(/^### 1\. Nombre de user story.*\n- Nombre de user story restante : #{remaining_stories}$/m)
end
