#' Funcao para clipar um polígono pelo outro e incluir as partes dos poligonos que extrapolam a área clipada
#'
#' Essa funcao cria um diretorio com nome dado e todas as subpastas.
#' @param area2clip O spatialpolygonsdataframe a ser clipado
#' @param clippingArea O spatialpolygonsdataframe para ser usado como área para clipar
#' @return A pasta cm todas as subpastas
#' @export
#' @examples
#' nome/Rscript


####################################################################################################
####################################################################################################
#####
#####         Clip a *polygon, by another polygon.
#####
#####         Author: Alexandre Camargo Martensen
#####
#####         clip.outside<-clip polygons, and include portions of fragments that are partially outside the clipped area
#####
#####         clip<-clip polygons and crop the polygons that spans to outside the clipping area
#####
#####         http://stackoverflow.com/questions/15881455/how-to-clip-worldmap-with-polygon-in-r
#####
####################################################################################################
####################################################################################################

clip.outside<-function(area2clip, clippingArea){

gI <- gIntersects(area2clip, clippingArea, byid = TRUE )
clip.out.r <- area2clip[ which(gI) , ]
return(clip.out.r)
}


