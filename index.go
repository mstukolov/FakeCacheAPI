package main

import "fmt"
import "./model"

func main() {

	var vehicles []*model.Vehicles

	vehicles = append(vehicles, &model.Vehicles{EtalonId:"vhc121ooo", PtsNumber: "pts0001", RegNumber: "T716AX197"})
	vehicles = append(vehicles, &model.Vehicles{EtalonId:"vhc122ooo", PtsNumber: "pts0002", RegNumber: "T716AX197"})
	vehicles = append(vehicles, &model.Vehicles{EtalonId:"vhc123ooo", PtsNumber: "pts0003", RegNumber: "T716AX197"})

	citizen := model.Citizen{EtalonId:"ffhgf8908908jlkjlk", LastName:"Ivanov", Vehicles: vehicles}


	fmt.Printf("{%s, %s}\n", citizen.EtalonId ,citizen.LastName)

	for _, v := range citizen.Vehicles {
		fmt.Printf("Vehicle: {%s}\n", v)
	}


}
