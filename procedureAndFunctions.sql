-- Un procedimiento almacenado para registrar una venta.
create or replace procedure registrar_ventas(id_clienteI int, id_productoI int, stock_ventaI int)
languaje plpgsql as $$
declare
	Stock_actual int;
	PrecioV double precision;
	NuevoStock int;
	existe int;
begin
	select stock, sum(stock_ventaI * precio) into stock, precioV from productos where id=

	--en mi defensa, tuve una hora menos

-- Validar que el cliente exista.
-- Verificar que el stock sea suficiente antes de procesar la venta.
-- Si no hay stock suficiente, Notificar por medio de un mensaje en consola usando RAISE.
-- Si hay stock, se realiza el registro de la venta.