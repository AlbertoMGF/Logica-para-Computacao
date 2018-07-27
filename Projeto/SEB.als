module SEB

abstract sig PoderExecutivo {
}

abstract sig PoderLegislativo {
}

sig SenadoFederal{}
sig CamaraDosDeputados {}
sig AssembleiaLegislativa {}



sig Presidente extends  PoderExecutivo{}
sig Senador extends PoderLegislativo{
	integra :  one SenadoFederal
}
sig DeputadoFederal extends PoderLegislativo{
	integra :  one CamaraDosDeputados 
}


sig Governador extends  PoderExecutivo{}
sig DeputadoEstadual extends PoderLegislativo{
	integra :  one AssembleiaLegislativa 
}


sig Prefeito extends  PoderExecutivo{}
sig Vereador extends PoderLegislativo{}


//Fatos

fact EstruturasSingulares {
	one SenadoFederal
	one CamaraDosDeputados 
	one AssembleiaLegislativa
	one Presidente
}


pred show[] {
}
run show for 3
