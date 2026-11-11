-- 가계부 entries 테이블
-- Supabase 대시보드 > SQL Editor 에 붙여 넣고 Run 하세요.

create table if not exists public.entries (
  id bigint generated always as identity primary key,
  type text not null check (type in ('income', 'expense')),
  date date not null,
  category text not null check (char_length(category) between 1 and 20),
  amount bigint not null check (amount > 0 and amount < 1000000000000),
  memo text not null default '' check (char_length(memo) <= 40),
  created_at timestamptz not null default now()
);

create index if not exists entries_date_idx on public.entries (date);

alter table public.entries enable row level security;

-- 회원 기능이 없으므로 익명(anon) 사용자에게 조회·추가·삭제를 허용합니다.
-- 주의: 사이트 주소를 아는 누구나 내역을 보고, 추가하고, 지울 수 있습니다.
create policy "anon can read entries" on public.entries for select to anon using (true);
create policy "anon can insert entries" on public.entries for insert to anon with check (true);
create policy "anon can delete entries" on public.entries for delete to anon using (true);

grant select, insert, delete on public.entries to anon;
