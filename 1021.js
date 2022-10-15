export function problem(lines) {
  var valor = lines[0];
  const notas = [100, 50, 20, 10, 5, 2];
  const moedas = [1, 0.5, 0.25, 0.1, 0.05, 0.01];

  console.log("NOTAS:");
  notas.forEach((e) => {
    const nota = parseInt(valor / e);
    valor = (valor % e) + 0.00001;
    console.log(nota + " nota(s) de R$ " + e.toFixed(2));
  });

  console.log("MOEDAS:");
  moedas.forEach((e) => {
    const moeda = parseInt(valor / e);
    valor = valor % e;
    console.log(moeda + " moeda(s) de R$ " + e.toFixed(2));
  });
}
