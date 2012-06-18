if not exists(select * from TaskLocale where localeCode = 'English') select 'There is no prior record of the tasks in the following language in the target database: English'
if not exists(select * from TaskLocale where localeCode = 'Spanish') select 'There is no prior record of the tasks in the following language in the target database: Spanish'
if not exists(select * from TaskLocale where localeCode = 'Kyrgyz') select 'There is no prior record of the tasks in the following language in the target database: Kyrgyz'
if not exists(select * from TaskLocale where localeCode = 'French') select 'There is no prior record of the tasks in the following language in the target database: French'
if not exists(select * from TaskLocale where localeCode = 'Chinese') select 'There is no prior record of the tasks in the following language in the target database: Chinese'
--
--
-- The following Tasks were not exported, as they have not yet been translated:
--
/*
