create or replace function update_count() returns trigger as $$
begin
    if 1 > (select product_count from product where id = NEW.product_id) then
        raise exception 'Недостаточно товара на складе';
    end if;

    update product
    set product_count = product_count - 1;

    return new;
end;
$$ language plpgsql;

create trigger update_trigger
after insert on purchase
for each row
execute function update_count();
