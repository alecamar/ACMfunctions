#' Funcao para clipar um polígono pelo outro
#'
#' Essa função executa um clip de dois shps ou spatialpolygonsdataframe (spdf)
#' @param area2clip O spatialpolygonsdataframe a ser clipado
#' @param clippingArea O spatialpolygonsdataframe para ser usado como área para clipar
#' @return A area clipada (spdf)
#' @export
#' @examples
#' clip<-function(area2clip, clippingArea)


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


clip<-function(area2clip, clippingArea){

  gI <- gIntersects(area2clip, clippingArea, byid = TRUE )
  out <- lapply( which(gI) , function(x){ gIntersection( area2clip[x,] , clippingArea) } )

  keep <- sapply(out, class)
  out <- out[keep == "SpatialPolygons"]


  # Coerce list back to SpatialPolygons object
  clip.out.r <- SpatialPolygons( lapply( 1:length( out ) , function(i) { Pol <- slot(out[[i]], "polygons")[[1]];
  slot(Pol, "ID") <- as.character(i)
  Pol
  }))

}
