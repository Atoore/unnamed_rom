.class Lcom/nttdocomo/android/areamail/service/internal/AreaMailService$AreaMailWorkerThread;
.super Ljava/lang/Thread;
.source "AreaMailService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AreaMailWorkerThread"
.end annotation


# instance fields
.field private mCanceled:Z

.field private mMessage:Lcom/nttdocomo/android/areamail/service/internal/AreaMailMessage;

.field private mReceiveTime:J

.field final synthetic this$0:Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;


# direct methods
.method public constructor <init>(Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;Lcom/nttdocomo/android/areamail/service/internal/AreaMailMessage;J)V
    .registers 7
    .parameter
    .parameter "message"
    .parameter "reciveTime"

    .prologue
    .line 847
    iput-object p1, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService$AreaMailWorkerThread;->this$0:Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 833
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService$AreaMailWorkerThread;->mMessage:Lcom/nttdocomo/android/areamail/service/internal/AreaMailMessage;

    .line 836
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService$AreaMailWorkerThread;->mReceiveTime:J

    .line 839
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService$AreaMailWorkerThread;->mCanceled:Z

    .line 848
    iput-object p2, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService$AreaMailWorkerThread;->mMessage:Lcom/nttdocomo/android/areamail/service/internal/AreaMailMessage;

    .line 849
    iput-wide p3, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService$AreaMailWorkerThread;->mReceiveTime:J

    .line 850
    return-void
.end method


# virtual methods
.method cancel()V
    .registers 2

    .prologue
    .line 856
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService$AreaMailWorkerThread;->mCanceled:Z

    .line 857
    return-void
.end method

.method public run()V
    .registers 13

    .prologue
    .line 866
    const-string v8, "areamail.service"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AreaMailWorkerThread.run:start time="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    :try_start_1c
    iget-object v8, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService$AreaMailWorkerThread;->mMessage:Lcom/nttdocomo/android/areamail/service/internal/AreaMailMessage;

    invoke-virtual {v8}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v3

    .line 869
    .local v3, messageBody:Ljava/lang/String;
    iget-object v8, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService$AreaMailWorkerThread;->mMessage:Lcom/nttdocomo/android/areamail/service/internal/AreaMailMessage;

    invoke-virtual {v8}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailMessage;->getMessageId()I

    move-result v8

    const v9, 0xffff

    and-int/2addr v8, v9

    int-to-long v5, v8

    .line 870
    .local v5, messageUid:J
    iget-object v8, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService$AreaMailWorkerThread;->mMessage:Lcom/nttdocomo/android/areamail/service/internal/AreaMailMessage;

    invoke-virtual {v8}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailMessage;->getSerialNumber()I

    move-result v8

    const v9, 0xffff

    and-int/2addr v8, v9

    int-to-long v8, v8

    const/16 v10, 0x10

    shl-long v10, v5, v10

    or-long v5, v8, v10

    .line 871
    iget-object v8, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService$AreaMailWorkerThread;->mMessage:Lcom/nttdocomo/android/areamail/service/internal/AreaMailMessage;

    invoke-virtual {v8}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailMessage;->getPopupFlag()Z

    move-result v8

    if-eqz v8, :cond_84

    iget-object v8, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService$AreaMailWorkerThread;->this$0:Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;

    #getter for: Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;
    invoke-static {v8}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->access$500(Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;)Lcom/android/internal/telephony/gsm/GSMPhone;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/GSMPhone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v8, v9, :cond_84

    .line 872
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 873
    .local v7, popupIntent:Landroid/content/Intent;
    const-string v8, "com.nttdocomo.android.areamail"

    const-string v9, "com.nttdocomo.android.areamail.AreaMailScreenConfirmActivity"

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 875
    const/high16 v8, 0x1000

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 876
    const-string v8, "areamail_startflag"

    const/4 v9, 0x4

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 877
    const-string v8, "areamail_body"

    invoke-virtual {v7, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 878
    const-string v8, "areamail_msgid"

    invoke-virtual {v7, v8, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 879
    iget-boolean v8, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService$AreaMailWorkerThread;->mCanceled:Z

    if-nez v8, :cond_84

    .line 880
    iget-object v8, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService$AreaMailWorkerThread;->this$0:Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;

    #getter for: Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->access$600(Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 884
    .end local v7           #popupIntent:Landroid/content/Intent;
    :cond_84
    new-instance v4, Lcom/nttdocomo/android/areamail/provider/MessageInfo;

    invoke-direct {v4}, Lcom/nttdocomo/android/areamail/provider/MessageInfo;-><init>()V

    .line 885
    .local v4, messageInfo:Lcom/nttdocomo/android/areamail/provider/MessageInfo;
    const-string v8, "\n"

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v8, v8, v9

    iput-object v8, v4, Lcom/nttdocomo/android/areamail/provider/MessageInfo;->mTitle:Ljava/lang/String;

    .line 886
    iput-object v3, v4, Lcom/nttdocomo/android/areamail/provider/MessageInfo;->mBody:Ljava/lang/String;

    .line 887
    iget-wide v8, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService$AreaMailWorkerThread;->mReceiveTime:J

    iput-wide v8, v4, Lcom/nttdocomo/android/areamail/provider/MessageInfo;->mDate:J

    .line 888
    const/4 v8, 0x0

    iput-boolean v8, v4, Lcom/nttdocomo/android/areamail/provider/MessageInfo;->mRead:Z

    .line 889
    iput-wide v5, v4, Lcom/nttdocomo/android/areamail/provider/MessageInfo;->mAppId:J

    .line 890
    iget-object v8, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService$AreaMailWorkerThread;->this$0:Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;

    #getter for: Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->access$600(Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v4}, Lcom/nttdocomo/android/areamail/provider/AreaMailDatabaseManager;->addMessage(Landroid/content/Context;Lcom/nttdocomo/android/areamail/provider/MessageInfo;)V

    .line 892
    new-instance v2, Landroid/content/Intent;

    const-string v8, "com.nttdocomo.android.areamail.action.STATUSBAR_UPDATE"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 893
    .local v2, iconIntent:Landroid/content/Intent;
    const-string v8, "areamail_statusbar_proc"

    const/4 v9, 0x1

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 894
    iget-object v8, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService$AreaMailWorkerThread;->this$0:Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;

    #getter for: Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->access$600(Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;)Landroid/content/Context;

    move-result-object v8

    const-string v9, "com.nttdocomo.android.permission.areamail.SCREEN_MANAGER"

    invoke-virtual {v8, v2, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_c0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1c .. :try_end_c0} :catch_dd
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1c .. :try_end_c0} :catch_106
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1c .. :try_end_c0} :catch_12f

    .line 915
    .end local v2           #iconIntent:Landroid/content/Intent;
    .end local v3           #messageBody:Ljava/lang/String;
    .end local v4           #messageInfo:Lcom/nttdocomo/android/areamail/provider/MessageInfo;
    .end local v5           #messageUid:J
    :goto_c0
    const-string v8, "areamail.service"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AreaMailWorkerThread.run:end time="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    return-void

    .line 896
    :catch_dd
    move-exception v8

    move-object v0, v8

    .line 897
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const-string v8, "areamail.service"

    const-string v9, "AreaMailWorkerThread.run:It failed in the parse PDU of the CBS message"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 898
    iget-object v8, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService$AreaMailWorkerThread;->this$0:Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;

    iget-object v9, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService$AreaMailWorkerThread;->mMessage:Lcom/nttdocomo/android/areamail/service/internal/AreaMailMessage;

    #calls: Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->resendAreaMailMessage(Lcom/nttdocomo/android/areamail/service/internal/AreaMailMessage;)V
    invoke-static {v8, v9}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->access$700(Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;Lcom/nttdocomo/android/areamail/service/internal/AreaMailMessage;)V

    .line 899
    new-instance v1, Landroid/content/Intent;

    const-string v8, "com.nttdocomo.android.areamail.action.STATUSBAR_UPDATE"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 900
    .local v1, errorIntent:Landroid/content/Intent;
    const-string v8, "areamail_statusbar_proc"

    const/4 v9, 0x3

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 901
    iget-object v8, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService$AreaMailWorkerThread;->this$0:Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;

    #getter for: Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->access$600(Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;)Landroid/content/Context;

    move-result-object v8

    const-string v9, "com.nttdocomo.android.permission.areamail.SCREEN_MANAGER"

    invoke-virtual {v8, v1, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_c0

    .line 902
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    .end local v1           #errorIntent:Landroid/content/Intent;
    :catch_106
    move-exception v8

    move-object v0, v8

    .line 903
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    const-string v8, "areamail.service"

    const-string v9, "AreaMailWorkerThread.run:It failed in preservation to the database of the CBS message"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 904
    iget-object v8, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService$AreaMailWorkerThread;->this$0:Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;

    iget-object v9, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService$AreaMailWorkerThread;->mMessage:Lcom/nttdocomo/android/areamail/service/internal/AreaMailMessage;

    #calls: Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->resendAreaMailMessage(Lcom/nttdocomo/android/areamail/service/internal/AreaMailMessage;)V
    invoke-static {v8, v9}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->access$700(Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;Lcom/nttdocomo/android/areamail/service/internal/AreaMailMessage;)V

    .line 905
    new-instance v1, Landroid/content/Intent;

    const-string v8, "com.nttdocomo.android.areamail.action.STATUSBAR_UPDATE"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 906
    .restart local v1       #errorIntent:Landroid/content/Intent;
    const-string v8, "areamail_statusbar_proc"

    const/4 v9, 0x2

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 907
    iget-object v8, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService$AreaMailWorkerThread;->this$0:Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;

    #getter for: Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->access$600(Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;)Landroid/content/Context;

    move-result-object v8

    const-string v9, "com.nttdocomo.android.permission.areamail.SCREEN_MANAGER"

    invoke-virtual {v8, v1, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_c0

    .line 908
    .end local v0           #e:Landroid/database/sqlite/SQLiteException;
    .end local v1           #errorIntent:Landroid/content/Intent;
    :catch_12f
    move-exception v8

    move-object v0, v8

    .line 909
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v8, "areamail.service"

    const-string v9, "AreaMailWorkerThread.run:Illegal argument error"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 910
    iget-object v8, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService$AreaMailWorkerThread;->this$0:Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;

    iget-object v9, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService$AreaMailWorkerThread;->mMessage:Lcom/nttdocomo/android/areamail/service/internal/AreaMailMessage;

    #calls: Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->resendAreaMailMessage(Lcom/nttdocomo/android/areamail/service/internal/AreaMailMessage;)V
    invoke-static {v8, v9}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->access$700(Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;Lcom/nttdocomo/android/areamail/service/internal/AreaMailMessage;)V

    .line 911
    new-instance v1, Landroid/content/Intent;

    const-string v8, "com.nttdocomo.android.areamail.action.STATUSBAR_UPDATE"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 912
    .restart local v1       #errorIntent:Landroid/content/Intent;
    const-string v8, "areamail_statusbar_proc"

    const/4 v9, 0x3

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 913
    iget-object v8, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService$AreaMailWorkerThread;->this$0:Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;

    #getter for: Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;->access$600(Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;)Landroid/content/Context;

    move-result-object v8

    const-string v9, "com.nttdocomo.android.permission.areamail.SCREEN_MANAGER"

    invoke-virtual {v8, v1, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_c0
.end method
