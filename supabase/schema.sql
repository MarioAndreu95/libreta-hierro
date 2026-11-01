-- Libreta de Hierro: una fila por usuario con todos sus datos (rutinas, entrenos, ajustes).
create table if not exists public.app_state (
  user_id    uuid primary key references auth.users(id) on delete cascade,
  data       jsonb not null default '{}'::jsonb,
  updated_at timestamptz not null default now()
);

alter table public.app_state enable row level security;

-- Cada usuario solo puede ver y modificar su propia fila.
drop policy if exists "leer lo mio" on public.app_state;
drop policy if exists "crear lo mio" on public.app_state;
drop policy if exists "editar lo mio" on public.app_state;
drop policy if exists "borrar lo mio" on public.app_state;
create policy "leer lo mio"   on public.app_state for select using (auth.uid() = user_id);
create policy "crear lo mio"  on public.app_state for insert with check (auth.uid() = user_id);
create policy "editar lo mio" on public.app_state for update using (auth.uid() = user_id) with check (auth.uid() = user_id);
create policy "borrar lo mio" on public.app_state for delete using (auth.uid() = user_id);
