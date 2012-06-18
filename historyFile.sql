use MagellanHistory
if not exists(select * from POHistoryLocale where localeCode = 'English') select 'There is no prior record of the POHistoryNotes in the following language in the target database: English'
if not exists(select * from CMHistoryLocale where localeCode = 'English') select 'There is no prior record of the CMHistoryNotes in the following language in the target database: English'
if not exists(select * from POHistoryLocale where localeCode = 'Spanish') select 'There is no prior record of the POHistoryNotes in the following language in the target database: Spanish'
if not exists(select * from CMHistoryLocale where localeCode = 'Spanish') select 'There is no prior record of the CMHistoryNotes in the following language in the target database: Spanish'
if not exists(select * from POHistoryLocale where localeCode = 'Kyrgyz') select 'There is no prior record of the POHistoryNotes in the following language in the target database: Kyrgyz'
if not exists(select * from CMHistoryLocale where localeCode = 'Kyrgyz') select 'There is no prior record of the CMHistoryNotes in the following language in the target database: Kyrgyz'
if not exists(select * from POHistoryLocale where localeCode = 'French') select 'There is no prior record of the POHistoryNotes in the following language in the target database: French'
if not exists(select * from CMHistoryLocale where localeCode = 'French') select 'There is no prior record of the CMHistoryNotes in the following language in the target database: French'
if not exists(select * from POHistoryLocale where localeCode = 'Chinese') select 'There is no prior record of the POHistoryNotes in the following language in the target database: Chinese'
if not exists(select * from CMHistoryLocale where localeCode = 'Chinese') select 'There is no prior record of the CMHistoryNotes in the following language in the target database: Chinese'
--
--
-- Adding note=[cmHistoryNote.poUpload.deductionApplied] language=[Spanish]
if not exists(select * from CMHistoryType where narrativeCode = 'cmHistoryNote.poUpload.deductionApplied')
		insert into CMHistoryType(creationDate,narrativeCode,parameterCount)
		values (getdate(),'cmHistoryNote.poUpload.deductionApplied',4)

if not exists(select * from CMHistoryLocale hl inner join CMHistoryType ht on hl.historyTypeId = ht.id where hl.localeCode = 'Spanish' and ht.narrativeCode = 'cmHistoryNote.poUpload.deductionApplied')
		insert into CMHistoryLocale(historyTypeId,creationDate,localeCode,narrative)
		select id,getdate(),'Spanish','Una deducción en el Documento &&TX01 - &&TX02 ha sido aplicado #CURRENCY_CODE_ALPHA=&&TX03 #CURRENCY_FORMAT_LONG=&&TX04 a esta credit memos (nota de crédito).' from CMHistoryType where narrativeCode = 'cmHistoryNote.poUpload.deductionApplied'
else
		update hl set creationDate = getdate(), narrative = 'Una deducción en el Documento &&TX01 - &&TX02 ha sido aplicado #CURRENCY_CODE_ALPHA=&&TX03 #CURRENCY_FORMAT_LONG=&&TX04 a esta credit memos (nota de crédito).'
		from CMHistoryLocale hl inner join CMHistoryType ht on hl.historyTypeId = ht.id
		where hl.localeCode = 'Spanish' and ht.narrativeCode = 'cmHistoryNote.poUpload.deductionApplied'

-- Adding note=[poHistoryNote.buyOfferService.tdAssociatedToPO] language=[Spanish]
if not exists(select * from POHistoryType where narrativeCode = 'poHistoryNote.buyOfferService.tdAssociatedToPO')
		insert into POHistoryType(creationDate,narrativeCode,parameterCount)
		values (getdate(),'poHistoryNote.buyOfferService.tdAssociatedToPO',2)

if not exists(select * from POHistoryLocale hl inner join POHistoryType ht on hl.historyTypeId = ht.id where hl.localeCode = 'Spanish' and ht.narrativeCode = 'poHistoryNote.buyOfferService.tdAssociatedToPO')
		insert into POHistoryLocale(historyTypeId,creationDate,localeCode,narrative)
		select id,getdate(),'Spanish','Payment Obligation ha sido incluído en el Time Draft &&TX01, comprado por &&TX02.' from POHistoryType where narrativeCode = 'poHistoryNote.buyOfferService.tdAssociatedToPO'
else
		update hl set creationDate = getdate(), narrative = 'Payment Obligation ha sido incluído en el Time Draft &&TX01, comprado por &&TX02.'
		from POHistoryLocale hl inner join POHistoryType ht on hl.historyTypeId = ht.id
		where hl.localeCode = 'Spanish' and ht.narrativeCode = 'poHistoryNote.buyOfferService.tdAssociatedToPO'

-- The following HistoryNotes were not exported, as they have not yet been translated:
--
/*
