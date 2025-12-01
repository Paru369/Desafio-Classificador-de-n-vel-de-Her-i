//Desafio Classificador de nível de Herói 


const prompt = require('prompt-sync')({ sigint: true });

let nome = prompt("Digite o nome do herói: ");
let xp = parseInt(prompt("Digite a quantidade de XP do herói: "), 10);


const niveis = [
    { limite: 1000, nivel: "Ferro" },
    { limite: 2000, nivel: "Bronze" },
    { limite: 5000, nivel: "Prata" },
    { limite: 7000, nivel: "Ouro" },
    { limite: 8000, nivel: "Platina" },
    { limite: 9000, nivel: "Ascendente" },
    { limite: 10000, nivel: "Imortal" },
    { limite: Infinity, nivel: "Radiante" } // qualquer XP acima de 10.000
];


let heroiNivel = niveis.find(item => xp <= item.limite).nivel;


console.log(`O Herói de nome ${nome} está no nível de ${heroiNivel}`);