.class Lcom/android/mms/ui/ComposeMessage$DeleteMessageListener;
.super Ljava/lang/Object;
.source "ComposeMessage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteMessageListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessage;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ComposeMessage;JLjava/lang/String;ZJ)V
    .locals 1
    .parameter
    .parameter "msgId"
    .parameter "type"
    .parameter "deleteLocked"
    .parameter "groupId"

    .prologue
    .line 831
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessage$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 832
    const-string v0, "mms"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 833
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/mms/ui/ComposeMessage;->access$1302(Lcom/android/mms/ui/ComposeMessage;Landroid/net/Uri;)Landroid/net/Uri;

    .line 844
    :goto_0
    invoke-static {p1, p5}, Lcom/android/mms/ui/ComposeMessage;->access$1402(Lcom/android/mms/ui/ComposeMessage;Z)Z

    .line 845
    return-void

    .line 834
    :cond_0
    const-string v0, "wpm"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 835
    sget-object v0, Lcom/android/mms/ui/MessageUtils;->WAP_PUSH_MESSAGE_BY_ID_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/mms/ui/ComposeMessage;->access$1302(Lcom/android/mms/ui/ComposeMessage;Landroid/net/Uri;)Landroid/net/Uri;

    goto :goto_0

    .line 838
    :cond_1
    cmp-long v0, p2, p6

    if-nez v0, :cond_2

    .line 839
    sget-object v0, Lcom/android/mms/ui/MessageUtils;->SMS_GROUP_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/mms/ui/ComposeMessage;->access$1302(Lcom/android/mms/ui/ComposeMessage;Landroid/net/Uri;)Landroid/net/Uri;

    goto :goto_0

    .line 841
    :cond_2
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/mms/ui/ComposeMessage;->access$1302(Lcom/android/mms/ui/ComposeMessage;Landroid/net/Uri;)Landroid/net/Uri;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/mms/ui/ComposeMessage;Landroid/net/Uri;Z)V
    .locals 0
    .parameter
    .parameter "uri"
    .parameter "deleteLocked"

    .prologue
    .line 826
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessage$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 827
    invoke-static {p1, p2}, Lcom/android/mms/ui/ComposeMessage;->access$1302(Lcom/android/mms/ui/ComposeMessage;Landroid/net/Uri;)Landroid/net/Uri;

    .line 828
    invoke-static {p1, p3}, Lcom/android/mms/ui/ComposeMessage;->access$1402(Lcom/android/mms/ui/ComposeMessage;Z)Z

    .line 829
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 13
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 852
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessage$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessage;->access$1500(Lcom/android/mms/ui/ComposeMessage;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 853
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessage$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessage;->access$1600(Lcom/android/mms/ui/ComposeMessage;)V

    .line 910
    :cond_0
    :goto_0
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessage$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-virtual {v11}, Lcom/android/mms/ui/ComposeMessage;->onDeleteStarting()V

    .line 913
    const-string v11, "ril.sms.gcf-mode"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 915
    .local v0, GcfMode:Ljava/lang/String;
    const-string v11, "On"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 916
    const-string v11, "Mms/ComposeMessage"

    const-string v12, "GCF Mode On -  DB Count Reset"

    invoke-static {v11, v12}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    const/4 v11, 0x0

    sput v11, Lcom/android/mms/MmsConfig;->SMS_DB_COUNT:I

    .line 919
    new-instance v4, Landroid/content/Intent;

    const-string v11, "android.intent.action.GCF_DEVICE_STORAGE_OK"

    invoke-direct {v4, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 920
    .local v4, intent:Landroid/content/Intent;
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessage$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessage;->access$400(Lcom/android/mms/ui/ComposeMessage;)Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11, v4}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 923
    .end local v4           #intent:Landroid/content/Intent;
    :cond_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 924
    return-void

    .line 856
    .end local v0           #GcfMode:Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/android/mms/ui/ComposeMessage;->access$1700()Landroid/app/ProgressDialog;

    move-result-object v11

    if-eqz v11, :cond_3

    invoke-static {}, Lcom/android/mms/ui/ComposeMessage;->access$1700()Landroid/app/ProgressDialog;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 857
    const-string v11, "Mms/ComposeMessage"

    const-string v12, "DeleteAnimation Progress Dismissed with OnClick()"

    invoke-static {v11, v12}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    invoke-static {}, Lcom/android/mms/ui/ComposeMessage;->access$1700()Landroid/app/ProgressDialog;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/ProgressDialog;->dismiss()V

    .line 860
    :cond_3
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessage$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessage;->access$1300(Lcom/android/mms/ui/ComposeMessage;)Landroid/net/Uri;

    move-result-object v11

    if-eqz v11, :cond_4

    .line 862
    const/4 v11, 0x1

    new-array v2, v11, [I

    .line 863
    .local v2, delItem:[I
    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/mms/ui/ComposeMessage$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v12}, Lcom/android/mms/ui/ComposeMessage;->access$1800(Lcom/android/mms/ui/ComposeMessage;)I

    move-result v12

    aput v12, v2, v11

    .line 864
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessage$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v11, v2}, Lcom/android/mms/ui/ComposeMessage;->access$1900(Lcom/android/mms/ui/ComposeMessage;[I)V

    .line 865
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessage$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessage;

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lcom/android/mms/ui/ComposeMessage;->access$2002(Lcom/android/mms/ui/ComposeMessage;Z)Z

    goto :goto_0

    .line 868
    .end local v2           #delItem:[I
    :cond_4
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessage$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessage;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessage;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v11}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 872
    .local v1, cursor:Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 874
    .local v3, deleteCount:I
    const/4 v6, -0x1

    .line 875
    .local v6, messagePosition:I
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessage$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessage;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessage;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v11}, Lcom/android/mms/ui/MessageListAdapter;->getCheckedCount()I

    move-result v11

    new-array v2, v11, [I

    .line 877
    .restart local v2       #delItem:[I
    if-eqz v1, :cond_7

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 879
    :cond_5
    add-int/lit8 v6, v6, 0x1

    .line 880
    const/4 v11, 0x1

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 881
    .local v7, msgId:J
    const/4 v11, 0x0

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 883
    .local v10, type:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessage$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessage;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessage;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v11, v7, v8, v10}, Lcom/android/mms/ui/MessageListAdapter;->isCheckedMessageId(JLjava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 894
    :cond_6
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-nez v11, :cond_5

    .line 895
    if-lez v3, :cond_7

    .line 896
    new-array v9, v3, [I

    .line 897
    .local v9, realDelItem:[I
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v2, v11, v9, v12, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 898
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessage$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v11, v9}, Lcom/android/mms/ui/ComposeMessage;->access$1900(Lcom/android/mms/ui/ComposeMessage;[I)V

    .line 899
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessage$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessage;

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lcom/android/mms/ui/ComposeMessage;->access$2002(Lcom/android/mms/ui/ComposeMessage;Z)Z

    .line 904
    .end local v7           #msgId:J
    .end local v9           #realDelItem:[I
    .end local v10           #type:Ljava/lang/String;
    :cond_7
    if-nez v3, :cond_0

    .line 905
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessage$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessage;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/mms/ui/ComposeMessage;->setDeleteModeLayout(Z)V

    goto/16 :goto_0

    .line 886
    .restart local v7       #msgId:J
    .restart local v10       #type:Ljava/lang/String;
    :cond_8
    const/16 v11, 0x14

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    if-eqz v11, :cond_a

    const/4 v11, 0x1

    move v5, v11

    .line 888
    .local v5, locked:Z
    :goto_2
    if-eqz v5, :cond_9

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessage$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessage;->access$1400(Lcom/android/mms/ui/ComposeMessage;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 891
    :cond_9
    add-int/lit8 v3, v3, 0x1

    .line 893
    const/4 v11, 0x1

    sub-int v11, v3, v11

    aput v6, v2, v11

    goto :goto_1

    .line 886
    .end local v5           #locked:Z
    :cond_a
    const/4 v11, 0x0

    move v5, v11

    goto :goto_2
.end method

.method public setDeleteLockedMessage(Z)V
    .locals 1
    .parameter "deleteLockedMessages"

    .prologue
    .line 848
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$DeleteMessageListener;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0, p1}, Lcom/android/mms/ui/ComposeMessage;->access$1402(Lcom/android/mms/ui/ComposeMessage;Z)Z

    .line 849
    return-void
.end method
