<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Exemplo JSP (Java Server Pages) - Calculadora de IMC</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
  </head>
  <body>
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="panel-heading">
          <h3 class="panel-title">Calcular IMC</h3>
        </div>
        <div class="panel-body">
          <form>
            <fieldset>
              <div class="form-group">
                <h4>Peso</h4>
                <input class="form-control" placeholder="Peso" name="peso" type="text">
                <h4>Altura</h4>
                <input class="form-control" placeholder="Altura" name="altura" type="text">
              </div>
              <button class="btn btn-sm btn-success">Calcular</button>
            </fieldset>
          </form>
        </div>
      </div>
    </div>
    <br>
    <p>
      ${resultado}
    </p>
  </body>
</html>