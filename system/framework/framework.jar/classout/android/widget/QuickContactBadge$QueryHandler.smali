.class Landroid/widget/QuickContactBadge$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "QuickContactBadge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/QuickContactBadge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/QuickContactBadge;


# direct methods
.method public constructor <init>(Landroid/widget/QuickContactBadge;Landroid/content/ContentResolver;)V
    .registers 3
    .parameter
    .parameter "cr"

    .prologue
    .line 242
    iput-object p1, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    .line 243
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 244
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 13
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 248
    const/4 v5, 0x0

    .line 249
    .local v5, lookupUri:Landroid/net/Uri;
    const/4 v2, 0x0

    .line 250
    .local v2, createUri:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 253
    .local v6, trigger:Z
    packed-switch p1, :pswitch_data_90

    .line 294
    .end local p2
    :cond_6
    :goto_6
    if-eqz p3, :cond_b

    .line 295
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 299
    :cond_b
    iget-object v7, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    #setter for: Landroid/widget/QuickContactBadge;->mContactUri:Landroid/net/Uri;
    invoke-static {v7, v5}, Landroid/widget/QuickContactBadge;->access$002(Landroid/widget/QuickContactBadge;Landroid/net/Uri;)Landroid/net/Uri;

    .line 303
    if-eqz v6, :cond_7d

    if-eqz v5, :cond_7d

    .line 305
    iget-object v7, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    #calls: Landroid/widget/QuickContactBadge;->trigger(Landroid/net/Uri;)V
    invoke-static {v7, v5}, Landroid/widget/QuickContactBadge;->access$100(Landroid/widget/QuickContactBadge;Landroid/net/Uri;)V

    .line 311
    :cond_19
    :goto_19
    return-void

    .line 255
    .restart local p2
    :pswitch_1a
    const/4 v6, 0x1

    .line 256
    :try_start_1b
    const-string/jumbo v7, "tel"

    check-cast p2, Ljava/lang/String;

    .end local p2
    const/4 v8, 0x0

    invoke-static {v7, p2, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 260
    :pswitch_25
    if-eqz p3, :cond_6

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 261
    const/4 v7, 0x0

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 262
    .local v0, contactId:J
    const/4 v7, 0x1

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 263
    .local v4, lookupKey:Ljava/lang/String;
    invoke-static {v0, v1, v4}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 264
    goto :goto_6

    .line 269
    .end local v0           #contactId:J
    .end local v4           #lookupKey:Ljava/lang/String;
    .restart local p2
    :pswitch_3c
    const/4 v6, 0x1

    .line 270
    const-string/jumbo v7, "mailto"

    check-cast p2, Ljava/lang/String;

    .end local p2
    const/4 v8, 0x0

    invoke-static {v7, p2, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 274
    :pswitch_47
    if-eqz p3, :cond_6

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 275
    const/4 v7, 0x0

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 276
    .restart local v0       #contactId:J
    const/4 v7, 0x1

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 277
    .restart local v4       #lookupKey:Ljava/lang/String;
    invoke-static {v0, v1, v4}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 278
    goto :goto_6

    .line 283
    .end local v0           #contactId:J
    .end local v4           #lookupKey:Ljava/lang/String;
    .restart local p2
    :pswitch_5e
    if-eqz p3, :cond_6

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 284
    const/4 v7, 0x0

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 285
    .restart local v0       #contactId:J
    const/4 v7, 0x1

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 286
    .restart local v4       #lookupKey:Ljava/lang/String;
    invoke-static {v0, v1, v4}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;
    :try_end_73
    .catchall {:try_start_1b .. :try_end_73} :catchall_76

    move-result-object v5

    .line 287
    const/4 v6, 0x1

    goto :goto_6

    .line 294
    .end local v0           #contactId:J
    .end local v4           #lookupKey:Ljava/lang/String;
    .end local p2
    :catchall_76
    move-exception v7

    if-eqz p3, :cond_7c

    .line 295
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 294
    :cond_7c
    throw v7

    .line 306
    :cond_7d
    if-eqz v2, :cond_19

    .line 308
    new-instance v3, Landroid/content/Intent;

    const-string v7, "com.android.contacts.action.SHOW_OR_CREATE_CONTACT"

    invoke-direct {v3, v7, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 309
    .local v3, intent:Landroid/content/Intent;
    iget-object v7, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    invoke-virtual {v7}, Landroid/widget/QuickContactBadge;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_19

    .line 253
    :pswitch_data_90
    .packed-switch 0x0
        :pswitch_47
        :pswitch_25
        :pswitch_3c
        :pswitch_1a
        :pswitch_5e
    .end packed-switch
.end method
