#' Heatmap on eset
#'
#' Does a cool heatmap
#'
#' @param eset an ExpressionSet
#' @param count The number of genes
#' @param ... Passed to heatmap
#'
#' @export
myhm = function(eset,count=100,...) {
  sds = apply(exprs(eset),1,sd)
  topN = order(sds,decreasing=TRUE)[1:count]
  pheatmap(exprs(eset)[topN,],...)
}
