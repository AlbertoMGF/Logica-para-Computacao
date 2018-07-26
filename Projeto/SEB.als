module SEB

abstract sig PoderExecutivo {
}

abstract sig PoderLegislativo {
}

sig SenadoFederal{}
sig CamaraDosDeputados {}



sig Presidente extends  PoderExecutivo{}
sig Senador extends PoderLegislativo{
	integra :  one SenadoFederal
}
sig DeputadoFederal extends PoderLegislativo{
	integra :  one CamaraDosDeputados 
}


sig Governador extends  PoderExecutivo{}
sig DeputadoEstadual extends PoderLegislativo{
	integra :  one CamaraDosDeputados 
}


sig Prefeito extends  PoderExecutivo{}
sig Vereador extends PoderLegislativo{}



fact UnicoSenado {
	one SenadoFederal
}


pred show[] {
}
run show for 3
