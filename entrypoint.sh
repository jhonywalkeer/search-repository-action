repository="https://api.github.com/repos/$1"
echo $repository

response=$(curl "${repository}" | jq ".description")
echo $response

echo "::set-output name=response::$response"