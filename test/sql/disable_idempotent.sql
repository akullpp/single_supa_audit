begin;

    create table public.dummy(
        id int primary key
    );


    select audit.enable_tracking('public.dummy');


    select audit.disable_tracking('public.dummy');
    select audit.disable_tracking('public.dummy');


    select *
    from pg_trigger
    where tgrelid = 'public.dummy'::regclass;

rollback;
