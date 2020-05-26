#' Funcao para criar um repositório padrao
#'
#' Essa funcao cria um diretorio com nome dado e todas as subpastas.
#' @param nome O nome a ser dado para o projeto ou diretorio.
#' @return A pasta cm todas as subpastas
#' @export
#' @examples
#' nome/Rscript

Cria_repositorio<-function(nome){
  dir.create(nome)
  dir.create(file.path(nome, 'Rscript'), recursive = TRUE)
  dir.create(file.path(nome, 'Rfunctions'), recursive = TRUE)
  dir.create(file.path(nome, 'docs'), recursive = TRUE)
  dir.create(file.path(nome, 'data'), recursive = TRUE)
  dir.create(file.path(nome, 'data_use'), recursive = TRUE)
  dir.create(file.path(nome, 'figs'), recursive = TRUE)
  dir.create(file.path(nome, 'output'), recursive = TRUE)
}
