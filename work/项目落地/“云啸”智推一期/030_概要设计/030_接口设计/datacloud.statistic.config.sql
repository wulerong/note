SELECT
    tableInfo.TABLE_ID              AS tableId
  , tableInfo.DB_TABLE_NAME         AS tableName
  , source.CONNECTION_PARAM         AS url
  , tableInfoConfig.COLUMN_TYPE     AS columnType
  , tableInfoConfig.TABLE_COLUMN_ID AS columnId
  , tableColumn.DB_COLUMN_NAME      AS columnName
  , codeConfig.CONFIG_NAME          AS columnValueType
  , tableColumn.TIME_FORMAT         AS timeFormat
  , tableConditions.CONDITIONS      AS conditions
FROM
    TABLE_INFO tableInfo
    LEFT JOIN
        DATA_SOURCE source
        ON
            tableInfo.DATA_SOURCE_ID = source.DATA_SOURCE_ID
            AND source.DELETE_FLAG   = 0
    LEFT JOIN
        TABLE_INFO_CONFIG tableInfoConfig
        ON
            tableInfo.TABLE_ID = tableInfoConfig.TABLE_ID
    LEFT JOIN
        TABLE_COLUMN tableColumn
        ON
            tableInfoConfig.TABLE_COLUMN_ID = tableColumn.TABLE_COLUMN_ID
            AND tableColumn.DELETE_FLAG     = 0
    INNER JOIN
        SYS_CODE_CONFIG codeConfig
        ON
            tableColumn.COLUMN_TYPE = codeConfig.ID
    LEFT JOIN
        TABLE_INFO_CONDITION tableConditions
        ON
            tableInfo.TABLE_ID              = tableConditions.TABLE_ID
            AND tableConditions.DELETE_FLAG = 0
WHERE
    tableInfo.DELETE_FLAG = 0