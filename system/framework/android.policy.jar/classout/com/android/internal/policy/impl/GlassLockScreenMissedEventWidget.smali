.class public Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;
.super Landroid/widget/RelativeLayout;
.source "GlassLockScreenMissedEventWidget.java"

# interfaces
.implements Lcom/android/internal/widget/SlidingTab$OnTriggerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget$NotiMode;
    }
.end annotation


# static fields
.field private static final MISSED_EVENT_ARRIVED:Ljava/lang/String; = "com.android.server.NotificationManagerService.NotificationArrived"

.field private static final MISSED_EVENT_REMOVED:Ljava/lang/String; = "com.android.server.NotificationManagerService.NotificationRemoved"

.field private static final TAG:Ljava/lang/String; = "GlassLockScreenMissedEventWidget"


# instance fields
.field private final CALL_PKG:Ljava/lang/String;

.field private final DEBUG:Z

.field private final DEFAULT_MISSED_EVENT_COUNT_TEXT:Ljava/lang/String;

.field private final EMAIL_PKG:Ljava/lang/String;

.field private final MISSED_EVENT_UPDATE:I

.field private MSG_PKG:Ljava/lang/String;

.field private final REQ_INDEX_CALL_EMAIL:I

.field private final REQ_INDEX_MSG:I

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mHandler:Landroid/os/Handler;

.field private mMissedCallCount:I

.field private mMissedCallNotiInfo:Landroid/app/NotificationInfo;

.field private mMissedMsgCount:I

.field private mSelector:Lcom/android/internal/widget/SlidingTab;

.field private mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .registers 8
    .parameter "context"
    .parameter "callback"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 82
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 41
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->DEBUG:Z

    .line 49
    const-string v2, "com.android.phone"

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->CALL_PKG:Ljava/lang/String;

    .line 50
    const-string v2, "com.android.mms"

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->MSG_PKG:Ljava/lang/String;

    .line 51
    const-string v2, "com.android.email"

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->EMAIL_PKG:Ljava/lang/String;

    .line 56
    const/16 v2, 0x12c2

    iput v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->MISSED_EVENT_UPDATE:I

    .line 57
    iput v3, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->REQ_INDEX_CALL_EMAIL:I

    .line 58
    const/16 v2, 0x7b

    iput v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->REQ_INDEX_MSG:I

    .line 60
    iput v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mMissedCallCount:I

    .line 61
    iput v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mMissedMsgCount:I

    .line 62
    const-string v2, "0"

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->DEFAULT_MISSED_EVENT_COUNT_TEXT:Ljava/lang/String;

    .line 68
    new-instance v2, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget$1;-><init>(Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mHandler:Landroid/os/Handler;

    .line 84
    iput-object p2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 86
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 87
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v2, 0x1090081

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 94
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 95
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "com.android.server.NotificationManagerService.NotificationArrived"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    const-string v2, "com.android.server.NotificationManagerService.NotificationRemoved"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    new-instance v2, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget$2;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget$2;-><init>(Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 109
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 112
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->init()V

    .line 113
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private init()V
    .registers 9

    .prologue
    const/4 v7, 0x4

    const/4 v2, 0x1

    const-string v5, "0"

    .line 123
    const-string v0, "GlassLockScreenMissedEventWidget"

    const-string v1, "Controller Initiation Running!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const v0, 0x1020208

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/SlidingTab;

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mSelector:Lcom/android/internal/widget/SlidingTab;

    .line 127
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mSelector:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v0, v2, v2}, Lcom/android/internal/widget/SlidingTab;->setHoldAfterTrigger(ZZ)V

    .line 129
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mSelector:Lcom/android/internal/widget/SlidingTab;

    const v1, 0x10803ce

    const v2, 0x10803bb

    const v3, 0x108020d

    const v4, 0x1080223

    const-string v6, "0"

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/SlidingTab;->setLeftTabResources(IIIILjava/lang/CharSequence;)V

    .line 133
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mSelector:Lcom/android/internal/widget/SlidingTab;

    const v1, 0x10803ec

    const v2, 0x10803bc

    const v3, 0x1080219

    const v4, 0x108022e

    const-string v6, "0"

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/SlidingTab;->setRightTabResources(IIIILjava/lang/CharSequence;)V

    .line 137
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mSelector:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/SlidingTab;->setOnTriggerListener(Lcom/android/internal/widget/SlidingTab$OnTriggerListener;)V

    .line 138
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mSelector:Lcom/android/internal/widget/SlidingTab;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SlidingTab;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mSelector:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v0, v7}, Lcom/android/internal/widget/SlidingTab;->setLeftVisibility(I)V

    .line 140
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mSelector:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v0, v7}, Lcom/android/internal/widget/SlidingTab;->setRightVisibility(I)V

    .line 142
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->updateMissedEvent()V

    .line 144
    return-void
.end method

.method private sendIntent(Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget$NotiMode;)V
    .registers 6
    .parameter "notiMode"

    .prologue
    .line 278
    const/4 v0, 0x0

    .line 279
    .local v0, intent:Landroid/app/PendingIntent;
    sget-object v1, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget$NotiMode;->MissedCall:Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget$NotiMode;

    if-ne p1, v1, :cond_2d

    .line 280
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    iget-object v1, v1, Landroid/app/NotificationInfo;->contentIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_f

    .line 281
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    iget-object v0, v1, Landroid/app/NotificationInfo;->contentIntent:Landroid/app/PendingIntent;

    .line 289
    :cond_f
    :goto_f
    if-eqz v0, :cond_2c

    .line 291
    :try_start_11
    const-string v1, "GlassLockScreenMissedEventWidget"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendintent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_2c
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_11 .. :try_end_2c} :catch_40

    .line 297
    :cond_2c
    :goto_2c
    return-void

    .line 283
    :cond_2d
    sget-object v1, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget$NotiMode;->MissedMsg:Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget$NotiMode;

    if-eq p1, v1, :cond_35

    sget-object v1, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget$NotiMode;->MissedEMail:Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget$NotiMode;

    if-ne p1, v1, :cond_f

    .line 284
    :cond_35
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    iget-object v1, v1, Landroid/app/NotificationInfo;->contentIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_f

    .line 285
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    iget-object v0, v1, Landroid/app/NotificationInfo;->contentIntent:Landroid/app/PendingIntent;

    goto :goto_f

    .line 293
    :catch_40
    move-exception v1

    goto :goto_2c
.end method

.method private updateMissedEvent()V
    .registers 13

    .prologue
    const/16 v7, 0x3e7

    const/4 v11, 0x4

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v8, ")"

    .line 189
    const/4 v2, 0x0

    .line 190
    .local v2, nCallCount:I
    const/4 v3, 0x0

    .line 191
    .local v3, nMsgCount:I
    const/4 v0, 0x0

    .line 192
    .local v0, bUpdatedCallCount:Z
    const/4 v1, 0x0

    .line 194
    .local v1, bUpdatedMsgCount:Z
    sget-object v4, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget$NotiMode;->MissedCall:Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget$NotiMode;

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->getNumMissedEvent(Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget$NotiMode;)I

    move-result v2

    .line 195
    sget-object v4, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget$NotiMode;->MissedMsg:Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget$NotiMode;

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->getNumMissedEvent(Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget$NotiMode;)I

    move-result v3

    .line 197
    iget v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mMissedCallCount:I

    if-eq v2, v4, :cond_ca

    if-ltz v2, :cond_ca

    .line 198
    const/4 v0, 0x1

    .line 199
    if-le v2, v7, :cond_c6

    .line 200
    iput v7, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mMissedCallCount:I

    .line 206
    :goto_22
    const-string v4, "GlassLockScreenMissedEventWidget"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateMissedEvent(missed Call Count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mMissedCallCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", bUpdatedCallCount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mMissedMsgCount:I

    if-eq v3, v4, :cond_d0

    if-ltz v2, :cond_d0

    .line 209
    const/4 v1, 0x1

    .line 210
    if-le v3, v7, :cond_cd

    .line 211
    iput v7, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mMissedMsgCount:I

    .line 217
    :goto_57
    const-string v4, "GlassLockScreenMissedEventWidget"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateMissedEvent(Unread Msg Count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mMissedMsgCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", bUpdatedMsgCount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    if-nez v1, :cond_85

    if-eqz v0, :cond_c5

    .line 220
    :cond_85
    iget v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mMissedCallCount:I

    if-ne v4, v10, :cond_d2

    .line 221
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mSelector:Lcom/android/internal/widget/SlidingTab;

    const v5, 0x10404d1

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/SlidingTab;->setLeftHintText(I)V

    .line 224
    :goto_91
    iget v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mMissedMsgCount:I

    if-ne v4, v10, :cond_ed

    .line 225
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mSelector:Lcom/android/internal/widget/SlidingTab;

    const v5, 0x10404d2

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/SlidingTab;->setRightHintText(I)V

    .line 229
    :goto_9d
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mSelector:Lcom/android/internal/widget/SlidingTab;

    iget v5, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mMissedCallCount:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/SlidingTab;->setLeftIconText(Ljava/lang/CharSequence;)V

    .line 230
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mSelector:Lcom/android/internal/widget/SlidingTab;

    iget v5, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mMissedMsgCount:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/SlidingTab;->setRightIconText(Ljava/lang/CharSequence;)V

    .line 232
    iget v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mMissedCallCount:I

    if-lez v4, :cond_108

    iget v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mMissedMsgCount:I

    if-lez v4, :cond_108

    .line 233
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mSelector:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v4, v9}, Lcom/android/internal/widget/SlidingTab;->setLeftVisibility(I)V

    .line 234
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mSelector:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v4, v9}, Lcom/android/internal/widget/SlidingTab;->setRightVisibility(I)V

    .line 249
    :cond_c5
    :goto_c5
    return-void

    .line 202
    :cond_c6
    iput v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mMissedCallCount:I

    goto/16 :goto_22

    .line 204
    :cond_ca
    const/4 v0, 0x0

    goto/16 :goto_22

    .line 213
    :cond_cd
    iput v3, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mMissedMsgCount:I

    goto :goto_57

    .line 215
    :cond_d0
    const/4 v1, 0x0

    goto :goto_57

    .line 223
    :cond_d2
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mSelector:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x10404d3

    new-array v7, v10, [Ljava/lang/Object;

    iget v8, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mMissedCallCount:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/SlidingTab;->setLeftHintText(Ljava/lang/CharSequence;)V

    goto :goto_91

    .line 227
    :cond_ed
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mSelector:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x10404d4

    new-array v7, v10, [Ljava/lang/Object;

    iget v8, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mMissedMsgCount:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/SlidingTab;->setRightHintText(Ljava/lang/CharSequence;)V

    goto :goto_9d

    .line 236
    :cond_108
    iget v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mMissedCallCount:I

    if-lez v4, :cond_117

    .line 237
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mSelector:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v4, v9}, Lcom/android/internal/widget/SlidingTab;->setLeftVisibility(I)V

    .line 238
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mSelector:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v4, v11}, Lcom/android/internal/widget/SlidingTab;->setRightVisibility(I)V

    goto :goto_c5

    .line 239
    :cond_117
    iget v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mMissedMsgCount:I

    if-lez v4, :cond_126

    .line 240
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mSelector:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v4, v11}, Lcom/android/internal/widget/SlidingTab;->setLeftVisibility(I)V

    .line 241
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mSelector:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v4, v9}, Lcom/android/internal/widget/SlidingTab;->setRightVisibility(I)V

    goto :goto_c5

    .line 243
    :cond_126
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mSelector:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v4, v11}, Lcom/android/internal/widget/SlidingTab;->setLeftVisibility(I)V

    .line 244
    iget-object v4, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mSelector:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v4, v11}, Lcom/android/internal/widget/SlidingTab;->setRightVisibility(I)V

    goto :goto_c5
.end method


# virtual methods
.method public cleanUp()V
    .registers 3

    .prologue
    .line 147
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 148
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 150
    const-string v0, "GlassLockScreenMissedEventWidget"

    const-string v1, "cleanUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    return-void
.end method

.method public getNumMissedEvent(Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget$NotiMode;)I
    .registers 9
    .parameter "mode"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v6, "GlassLockScreenMissedEventWidget"

    const-string v5, ")"

    .line 253
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 255
    .local v0, mNM:Landroid/app/NotificationManager;
    if-nez v0, :cond_14

    move v1, v3

    .line 274
    :goto_13
    return v1

    .line 258
    :cond_14
    sget-object v1, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget$NotiMode;->MissedCall:Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget$NotiMode;

    if-ne p1, v1, :cond_4f

    .line 259
    const-string v1, "com.android.phone"

    invoke-virtual {v0, v1, v4}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    .line 266
    :cond_20
    :goto_20
    sget-object v1, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget$NotiMode;->MissedCall:Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget$NotiMode;

    if-ne p1, v1, :cond_6b

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    if-eqz v1, :cond_6b

    .line 267
    const-string v1, "GlassLockScreenMissedEventWidget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNumMissedEvent(missed Call Count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    iget v2, v2, Landroid/app/NotificationInfo;->missedCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mMissedCallNotiInfo:Landroid/app/NotificationInfo;

    iget v1, v1, Landroid/app/NotificationInfo;->missedCount:I

    goto :goto_13

    .line 260
    :cond_4f
    sget-object v1, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget$NotiMode;->MissedMsg:Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget$NotiMode;

    if-ne p1, v1, :cond_5e

    .line 261
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->MSG_PKG:Ljava/lang/String;

    const/16 v2, 0x7b

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    goto :goto_20

    .line 262
    :cond_5e
    sget-object v1, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget$NotiMode;->MissedEMail:Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget$NotiMode;

    if-ne p1, v1, :cond_20

    .line 263
    const-string v1, "com.android.email"

    invoke-virtual {v0, v1, v4}, Landroid/app/NotificationManager;->getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    goto :goto_20

    .line 269
    :cond_6b
    sget-object v1, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget$NotiMode;->MissedMsg:Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget$NotiMode;

    if-eq p1, v1, :cond_73

    sget-object v1, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget$NotiMode;->MissedEMail:Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget$NotiMode;

    if-ne p1, v1, :cond_9f

    :cond_73
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    if-eqz v1, :cond_9f

    .line 270
    const-string v1, "GlassLockScreenMissedEventWidget"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNumMissedEvent(Unread Msg Count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    iget v2, v2, Landroid/app/NotificationInfo;->missedCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mUnreadMsgNotiInfo:Landroid/app/NotificationInfo;

    iget v1, v1, Landroid/app/NotificationInfo;->missedCount:I

    goto/16 :goto_13

    :cond_9f
    move v1, v3

    .line 274
    goto/16 :goto_13
.end method

.method protected handleMissedEventUpdate()V
    .registers 1

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->updateMissedEvent()V

    .line 117
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->invalidate()V

    .line 118
    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .registers 4
    .parameter "v"
    .parameter "grabbedState"

    .prologue
    .line 182
    if-nez p2, :cond_2

    .line 184
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    if-eqz v0, :cond_b

    .line 185
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 186
    :cond_b
    return-void
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 155
    const-string v0, "GlassLockScreenMissedEventWidget"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 162
    const-string v0, "GlassLockScreenMissedEventWidget"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-direct {p0}, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->updateMissedEvent()V

    .line 165
    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .registers 4
    .parameter "v"
    .parameter "whichHandle"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 170
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mSelector:Lcom/android/internal/widget/SlidingTab;

    invoke-virtual {v0}, Lcom/android/internal/widget/SlidingTab;->cancelAnimation()V

    .line 172
    :cond_d
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1b

    .line 173
    sget-object v0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget$NotiMode;->MissedCall:Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget$NotiMode;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->sendIntent(Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget$NotiMode;)V

    .line 177
    :cond_15
    :goto_15
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 178
    return-void

    .line 174
    :cond_1b
    const/4 v0, 0x2

    if-ne p2, v0, :cond_15

    .line 175
    sget-object v0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget$NotiMode;->MissedMsg:Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget$NotiMode;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->sendIntent(Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget$NotiMode;)V

    goto :goto_15
.end method
