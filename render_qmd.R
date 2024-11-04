### render html in the correct folder structure
# I do this because GitHub can only display html files in the docs folder
############
wd = "C:/Users/afurtjes/Documents/GitHub/BrainAtrophy_Genetics/"
setwd(wd)

fileNames = list.files(pattern=".qmd")
fileNames = stringr:: str_remove(fileNames, pattern=".qmd")

for(i in fileNames){
  qmd <- paste0(i, ".qmd")
  html <- paste0(i, ".html")
  print(qmd)
  quarto::quarto_render(input = qmd, output_file = html)
}

# delete docs directory
path2="C:/Users/afurtjes/Documents/GitHub/BrainAtrophy_Genetics/docs"
unlink(path2, recursive = T)

# rename _site directory
library(ff)
path1="C:/Users/afurtjes/Documents/GitHub/BrainAtrophy_Genetics/_site"
file.move(path1,path2)

### moving directory did not work
library(ff)
path1="C:/Users/afurtjes/Documents/GitHub/BrainAtrophy_Genetics/_site"
path2="C:/Users/afurtjes/Documents/GitHub/BrainAtrophy_Genetics/docs"
unlink(path2, recursive = T)
file.move(path1,path2)