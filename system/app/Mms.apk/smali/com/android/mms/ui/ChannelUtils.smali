.class public Lcom/android/mms/ui/ChannelUtils;
.super Ljava/lang/Object;
.source "ChannelUtils.java"


# static fields
.field private static languages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;",
            ">;"
        }
    .end annotation
.end field

.field private static msgId:[S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/mms/ui/ChannelUtils;->languages:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addChannel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 4
    .parameter "context"
    .parameter "channelid"
    .parameter "channelname"
    .parameter "value"

    .prologue
    .line 212
    invoke-static {p0, p1}, Lcom/android/mms/ui/ChannelUtils;->isChannelAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    const/4 v1, 0x0

    .line 224
    :goto_0
    return v1

    .line 216
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 217
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "channel_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const-string v1, "channel_name"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string v1, "is_checked"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 220
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Channels;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 221
    const-string v1, "Mms/ChannelUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addChannel :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", CHANNEL_NAME :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", IS_CHECKED :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static appendId(Ljava/lang/Long;)Landroid/net/Uri;
    .locals 3
    .parameter "id"

    .prologue
    .line 277
    sget-object v0, Landroid/provider/Telephony$Channels;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static checkLanguage(Landroid/content/SharedPreferences;)V
    .locals 11
    .parameter "prefs"

    .prologue
    const/4 v10, 0x0

    .line 41
    sget-object v8, Lcom/android/mms/ui/ChannelUtils;->languages:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 43
    const-string v8, "pref_key_german"

    invoke-interface {p0, v8, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 44
    .local v3, isGerman:Z
    if-eqz v3, :cond_0

    .line 45
    sget-object v8, Lcom/android/mms/ui/ChannelUtils;->languages:Ljava/util/ArrayList;

    sget-object v9, Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;->MSGSMS_CB_LANGUAGE_GERMAN:Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    :cond_0
    const-string v8, "pref_key_english"

    invoke-interface {p0, v8, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 48
    .local v1, isEnglish:Z
    if-eqz v1, :cond_1

    .line 49
    sget-object v8, Lcom/android/mms/ui/ChannelUtils;->languages:Ljava/util/ArrayList;

    sget-object v9, Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;->MSGSMS_CB_LANGUAGE_ENGLISH:Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    :cond_1
    const-string v8, "pref_key_italian"

    invoke-interface {p0, v8, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 52
    .local v4, isItalian:Z
    if-eqz v4, :cond_2

    .line 53
    sget-object v8, Lcom/android/mms/ui/ChannelUtils;->languages:Ljava/util/ArrayList;

    sget-object v9, Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;->MSGSMS_CB_LANGUAGE_ITALIAN:Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    :cond_2
    const-string v8, "pref_key_french"

    invoke-interface {p0, v8, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 56
    .local v2, isFrench:Z
    if-eqz v2, :cond_3

    .line 57
    sget-object v8, Lcom/android/mms/ui/ChannelUtils;->languages:Ljava/util/ArrayList;

    sget-object v9, Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;->MSGSMS_CB_LANGUAGE_FRENCH:Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    :cond_3
    const-string v8, "pref_key_spanish"

    invoke-interface {p0, v8, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 60
    .local v6, isSpanish:Z
    if-eqz v6, :cond_4

    .line 61
    sget-object v8, Lcom/android/mms/ui/ChannelUtils;->languages:Ljava/util/ArrayList;

    sget-object v9, Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;->MSGSMS_CB_LANGUAGE_SPANISH:Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    :cond_4
    const-string v8, "pref_key_swedish"

    invoke-interface {p0, v8, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 64
    .local v7, isSwedish:Z
    if-eqz v7, :cond_5

    .line 65
    sget-object v8, Lcom/android/mms/ui/ChannelUtils;->languages:Ljava/util/ArrayList;

    sget-object v9, Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;->MSGSMS_CB_LANGUAGE_SWEDISH:Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_5
    const-string v8, "pref_key_danish"

    invoke-interface {p0, v8, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 68
    .local v0, isDanish:Z
    if-eqz v0, :cond_6

    .line 69
    sget-object v8, Lcom/android/mms/ui/ChannelUtils;->languages:Ljava/util/ArrayList;

    sget-object v9, Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;->MSGSMS_CB_LANGUAGE_DANISH:Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    :cond_6
    const-string v8, "pref_key_portuguese"

    invoke-interface {p0, v8, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 72
    .local v5, isPortuguese:Z
    if-eqz v5, :cond_7

    .line 73
    sget-object v8, Lcom/android/mms/ui/ChannelUtils;->languages:Ljava/util/ArrayList;

    sget-object v9, Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;->MSGSMS_CB_LANGUAGE_PORTUGUESE:Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_7
    return-void
.end method

.method public static getChannelId(Landroid/content/Context;)[S
    .locals 9
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 93
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Channels;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v3

    const-string v3, "channel_id"

    aput-object v3, v2, v8

    const-string v3, "is_checked=1"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 97
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 98
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v0, v0, [S

    sput-object v0, Lcom/android/mms/ui/ChannelUtils;->msgId:[S

    .line 99
    const/4 v6, 0x0

    .local v6, chid:I
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v6, v0, :cond_0

    .line 100
    sget-object v0, Lcom/android/mms/ui/ChannelUtils;->msgId:[S

    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-short v1, v1

    aput-short v1, v0, v6

    .line 101
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 104
    :cond_0
    if-eqz v7, :cond_1

    .line 105
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 107
    :cond_1
    sget-object v0, Lcom/android/mms/ui/ChannelUtils;->msgId:[S

    return-object v0

    .line 104
    .end local v6           #chid:I
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 105
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static getCheckedCount(Landroid/content/Context;)I
    .locals 8
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 115
    const/4 v6, 0x0

    .line 116
    .local v6, count:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Channels;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v3

    const/4 v3, 0x1

    const-string v5, "is_checked"

    aput-object v5, v2, v3

    const-string v3, "is_checked=1"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 120
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 122
    if-eqz v7, :cond_0

    .line 123
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 125
    :cond_0
    return v6

    .line 122
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_1

    .line 123
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0
.end method

.method public static getIdbyChannel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Long;
    .locals 9
    .parameter "context"
    .parameter "channelid"

    .prologue
    const-wide/16 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 161
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Channels;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "channel_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 164
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 166
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 167
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 173
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 176
    :goto_0
    return-object v0

    .line 169
    :cond_0
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 173
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 176
    :cond_2
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 173
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getLanguageArray()[Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;
    .locals 5

    .prologue
    .line 80
    sget-object v2, Lcom/android/mms/ui/ChannelUtils;->languages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v0, v2, [Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

    .line 82
    .local v0, c:[Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v2, Lcom/android/mms/ui/ChannelUtils;->languages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 83
    sget-object v2, Lcom/android/mms/ui/ChannelUtils;->languages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

    aput-object v2, v0, v1

    .line 82
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 85
    :cond_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CB] c.size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 86
    check-cast v0, [Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

    .end local v0           #c:[Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;
    return-object v0
.end method

.method public static isChannelAvailable(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .parameter "context"
    .parameter "channelid"

    .prologue
    const/4 v2, 0x0

    .line 143
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Channels;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "channel_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 145
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 148
    .local v6, count:I
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 150
    if-eqz v7, :cond_0

    .line 151
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 154
    :cond_0
    if-nez v6, :cond_2

    .line 155
    const/4 v0, 0x0

    .line 157
    :goto_0
    return v0

    .line 150
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_1

    .line 151
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    .line 157
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static modifyChannel(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 4
    .parameter "context"
    .parameter "id"
    .parameter "channelid"
    .parameter "channelname"
    .parameter "value"

    .prologue
    const/4 v3, 0x0

    .line 265
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 266
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "channel_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const-string v1, "channel_name"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const-string v1, "is_checked"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 269
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p1}, Lcom/android/mms/ui/ChannelUtils;->appendId(Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 270
    const/4 v1, 0x1

    return v1
.end method

.method public static removeChannel(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 244
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Channels;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 245
    return-void
.end method

.method public static removeChannel(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "channelid"

    .prologue
    .line 248
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Channels;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "channel_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 249
    return-void
.end method

.method public static setCbSettings(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 8
    .parameter "context"
    .parameter "sharedpref"

    .prologue
    const/4 v5, 0x0

    .line 281
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .line 282
    .local v0, smsManager:Landroid/telephony/SmsManager;
    const-string v4, "pref_key_cb_settings_activation"

    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 284
    .local v1, cbStatus:Z
    const-string v4, "pref_cb_my_channel_enabled_count"

    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 286
    .local v3, chCount:I
    const-string v4, "pref_key_cb_channel_selection"

    const-string v5, "All channels"

    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 288
    .local v6, chSelection:Ljava/lang/String;
    const/4 v2, 0x1

    .line 289
    .local v2, selectId:C
    const-string v4, "My channel"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 290
    const/4 v2, 0x2

    .line 292
    :cond_0
    invoke-static {p1}, Lcom/android/mms/ui/ChannelUtils;->checkLanguage(Landroid/content/SharedPreferences;)V

    .line 294
    const-string v4, "Mms/ChannelUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setCbSettings : cbStatus :"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", chSelection = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", chCount = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    invoke-static {p0}, Lcom/android/mms/ui/ChannelUtils;->getChannelId(Landroid/content/Context;)[S

    move-result-object v4

    invoke-static {}, Lcom/android/mms/ui/ChannelUtils;->getLanguageArray()[Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->setCbSettings(ZCI[S[Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;)V

    .line 299
    return-void
.end method

.method public static updateSubscription(Landroid/content/Context;II)V
    .locals 5
    .parameter "context"
    .parameter "channelid"
    .parameter "value"

    .prologue
    .line 183
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 184
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "is_checked"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 185
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Channels;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "channel_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 187
    return-void
.end method
