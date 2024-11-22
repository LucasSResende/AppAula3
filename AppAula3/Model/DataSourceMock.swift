//
//  BD.swift
//  AppAula3
//
//  Created by user269368 on 17/11/24.
//

let servicesMock: [ServiceType] = [
    ServiceType(id: 1, nome: "Yoga", imagem: "yoga"),
    ServiceType(id: 2, nome: "Meditação", imagem: "medita"),
    ServiceType(id: 3, nome: "Alongamento", imagem: "alonga"),
    ServiceType(id: 4, nome: "Hidratação", imagem: "hidrata"),
    ServiceType(id: 5, nome: "Leitura", imagem: "ler")
]

let goalMock: [GoalType] = [
    GoalType(id: 1, icone: "leaf.fill", titulo: "Relaxamento", descricao: "Praticar yoga por 20 minutos"),
    GoalType(id: 2, icone: "heart.fill", titulo: "Bem-estar", descricao: "Meditar por 10 minutos diariamente")
]

let userMock: [UserModel] = [
    UserModel(id: 1, nome: "Lucas"),
    UserModel(id: 2, nome: "Maria"),
    UserModel(id: 3, nome: "João")
]
