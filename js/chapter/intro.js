function serie(debut, fin) {
  if (arguments.length < 2) {
    fin = debut;
    debut = 0;
  }
  var resultat = [];
  for (var i = debut; i <= fin; i++)
    resultat.push(i);
  return resultat;
}

function somme(nombres) {
  var total = 0;
  for (var i = 0; i < nombres.length; i++)
    total += nombres[i];
  return total;
}
