function get_file_count {
  echo $(ls -1 | wc -l)
}

echo "¡Bienvenido al juego de adivinanzas!"
echo "¿Cuántos archivos hay en el directorio actual?"

actual=$(get_file_count)
guess=-1

while [[ $guess -ne $actual ]]; do
  read -p "Tu suposición: " guess
  if [[ $guess -lt $actual ]]; then
    echo "Demasiado bajo. Intenta de nuevo."
  elif [[ $guess -gt $actual ]]; then
    echo "Demasiado alto. Intenta de nuevo."
  fi
done

echo "¡Felicidades! Adivinaste correctamente."

