# Libreta de Hierro

App web (PWA) para crear rutinas, apuntar entrenos y ver el progreso. Se guarda en Supabase y se publica en Vercel.

## 1. Supabase
1. Crea un proyecto en supabase.com (o usa uno que ya tengas).
2. **SQL Editor → New query**: pega el contenido de `supabase/schema.sql` y pulsa **Run**.
3. **Authentication → Sign In / Providers → Email**: déjalo activado. Si no quieres tener que confirmar el email al crear la cuenta, desactiva "Confirm email".
4. **Project Settings → API**: copia la *Project URL* y la *anon public key* y ponlas en `config.js`.

## 2. Vercel
1. En vercel.com → **Add New → Project** → importa este repositorio de GitHub.
2. Framework: **Other**. No hace falta comando de build. Pulsa **Deploy**.
3. Copia la dirección que te da Vercel y ponla en Supabase en **Authentication → URL Configuration → Site URL**.

Cada vez que se suba un cambio a GitHub, Vercel publica la nueva versión solo.

## 3. En el iPhone
Abre la dirección de Vercel en Safari → Compartir → **Añadir a pantalla de inicio**.

## Pasar los datos de la versión anterior
En la versión antigua: Ajustes → **Copiar copia de seguridad**. En la nueva, después de entrar: Ajustes → pega el texto → **Restaurar**.

Fotos de ejercicios: [free-exercise-db](https://github.com/yuhonas/free-exercise-db) (dominio público).
