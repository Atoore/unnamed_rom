.class Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HomeKeyDoubleClickConcept"
.end annotation


# static fields
.field public static final DEBUG:Z = true

.field public static final TAG_HKDC:Ljava/lang/String; = "HomeKeyDoubleClick"


# instance fields
.field private mCheckHomeShortDoubleClick:Ljava/lang/Runnable;

.field private mExplicitComponent:Landroid/content/ComponentName;

.field private mHomeActionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIntentExplicit:Landroid/content/Intent;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mPostDelay:J

.field private mPosted:Z

.field private mSentHomeDownToApp:Z

.field private mStatusBar:Landroid/app/StatusBarManager;

.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 3157
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mPosted:Z

    .line 3119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mHomeActionList:Ljava/util/ArrayList;

    .line 3120
    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mPostDelay:J

    .line 3121
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VOICE_COMMAND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mIntentExplicit:Landroid/content/Intent;

    .line 3122
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.vlingo.client.samsung"

    const-string v2, "com.vlingo.client.car.CarActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mExplicitComponent:Landroid/content/ComponentName;

    .line 3124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mPm:Landroid/content/pm/PackageManager;

    .line 3130
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept$1;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mCheckHomeShortDoubleClick:Ljava/lang/Runnable;

    .line 3159
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mIntentExplicit:Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3160
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mIntentExplicit:Landroid/content/Intent;

    const-string v1, "AUTO_LISTEN"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3161
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mIntentExplicit:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mExplicitComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3165
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mIntentExplicit:Landroid/content/Intent;

    const-string v1, "isThisComeFromHomeKeyDoubleClickConcept"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3166
    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 3117
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->isSingleClick()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 3117
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->singleClickJob()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 3117
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->isDoubleClick()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 3117
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->doubleClickJob()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 3117
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->reset()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;)Landroid/app/StatusBarManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 3117
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mStatusBar:Landroid/app/StatusBarManager;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;Landroid/app/StatusBarManager;)Landroid/app/StatusBarManager;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3117
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mStatusBar:Landroid/app/StatusBarManager;

    return-object p1
.end method

.method private checkVoiceCommandActivity(Z)Z
    .registers 9
    .parameter "isExplicit"

    .prologue
    const/4 v6, 0x0

    const-string v5, "HomeKeyDoubleClick"

    .line 3373
    const/4 v0, 0x0

    .line 3374
    .local v0, explicitActivityInfo:Landroid/content/pm/ActivityInfo;
    const/4 v1, 0x0

    .line 3376
    .local v1, implicitActivityList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string v2, "HomeKeyDoubleClick"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in checkVoiceCommandActivity() isExplicit="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3378
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    if-nez v2, :cond_2c

    .line 3379
    const-string v2, "HomeKeyDoubleClick"

    const-string v2, "in checkVoiceCommandActivity(), mContext is null. return false"

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v6

    .line 3415
    :goto_2b
    return v2

    .line 3383
    :cond_2c
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mPm:Landroid/content/pm/PackageManager;

    if-nez v2, :cond_3a

    .line 3384
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mPm:Landroid/content/pm/PackageManager;

    .line 3387
    :cond_3a
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mPm:Landroid/content/pm/PackageManager;

    if-nez v2, :cond_47

    .line 3388
    const-string v2, "HomeKeyDoubleClick"

    const-string v2, "in checkVoiceCommandActivity(), fail to retrieve Package manager. return false"

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v6

    .line 3389
    goto :goto_2b

    .line 3393
    :cond_47
    if-eqz p1, :cond_5e

    .line 3395
    :try_start_49
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mExplicitComponent:Landroid/content/ComponentName;

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_52
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_49 .. :try_end_52} :catch_87

    move-result-object v0

    .line 3399
    :goto_53
    if-nez v0, :cond_7e

    .line 3400
    const-string v2, "HomeKeyDoubleClick"

    const-string v2, "in checkVoiceCommandActivity(), ActivityInfo is null. return false"

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v6

    .line 3401
    goto :goto_2b

    .line 3405
    :cond_5e
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mPm:Landroid/content/pm/PackageManager;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VOICE_COMMAND"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 3407
    if-eqz v1, :cond_75

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_7e

    .line 3408
    :cond_75
    const-string v2, "HomeKeyDoubleClick"

    const-string v2, "in checkVoiceCommandActivity(), There is no implicit Activities. return false"

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v6

    .line 3409
    goto :goto_2b

    .line 3414
    :cond_7e
    const-string v2, "HomeKeyDoubleClick"

    const-string v2, "in checkVoiceCommandActivity(), return true"

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3415
    const/4 v2, 0x1

    goto :goto_2b

    .line 3396
    :catch_87
    move-exception v2

    goto :goto_53
.end method

.method private collapseQuickPanel()V
    .registers 3

    .prologue
    .line 3439
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept$3;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept$3;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3450
    return-void
.end method

.method private dismissKeyguard()V
    .registers 3

    .prologue
    .line 3419
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardOn()Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isSecure()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 3420
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_36

    .line 3421
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    .line 3422
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 3423
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept$2;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3430
    :cond_36
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    #calls: Lcom/android/internal/policy/impl/PhoneWindowManager;->updateLockScreenTimeout()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$800(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    .line 3432
    :cond_3b
    return-void
.end method

.method private doubleClickJob()V
    .registers 2

    .prologue
    .line 3310
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->startVoiceCommandActivity(Landroid/content/Intent;)V

    .line 3311
    return-void
.end method

.method private isDoubleClick()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v1, "HomeKeyDoubleClick"

    .line 3226
    const-string v0, "HomeKeyDoubleClick"

    const-string v0, "isDoubleClick() is called"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3227
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->printList()V

    .line 3229
    monitor-enter p0

    .line 3230
    :try_start_f
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mHomeActionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5e

    .line 3231
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mHomeActionList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_5e

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mHomeActionList:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_5e

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mHomeActionList:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_5e

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mHomeActionList:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_5e

    .line 3235
    const-string v0, "HomeKeyDoubleClick"

    const-string v1, "in isDoubleClick() true"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3236
    monitor-exit p0

    move v0, v2

    .line 3242
    :goto_5d
    return v0

    .line 3241
    :cond_5e
    const-string v0, "HomeKeyDoubleClick"

    const-string v1, "in isDoubleClick() false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3242
    monitor-exit p0

    move v0, v3

    goto :goto_5d

    .line 3243
    :catchall_68
    move-exception v0

    monitor-exit p0
    :try_end_6a
    .catchall {:try_start_f .. :try_end_6a} :catchall_68

    throw v0
.end method

.method private isSingleClick()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v1, "HomeKeyDoubleClick"

    .line 3208
    const-string v0, "HomeKeyDoubleClick"

    const-string v0, "isSingleClick() is called"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3209
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->printList()V

    .line 3211
    monitor-enter p0

    .line 3212
    :try_start_f
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mHomeActionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_40

    .line 3213
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mHomeActionList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_40

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mHomeActionList:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_40

    .line 3215
    const-string v0, "HomeKeyDoubleClick"

    const-string v1, "in isSingleClick() true"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3216
    monitor-exit p0

    move v0, v2

    .line 3221
    :goto_3f
    return v0

    .line 3220
    :cond_40
    const-string v0, "HomeKeyDoubleClick"

    const-string v1, "in isSingleClick() false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3221
    monitor-exit p0

    move v0, v3

    goto :goto_3f

    .line 3222
    :catchall_4a
    move-exception v0

    monitor-exit p0
    :try_end_4c
    .catchall {:try_start_f .. :try_end_4c} :catchall_4a

    throw v0
.end method

.method private printList()V
    .registers 6

    .prologue
    .line 3261
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 3262
    .local v0, buff:Ljava/lang/String;
    const-string v0, "list value = "

    .line 3264
    monitor-enter p0

    .line 3265
    :try_start_8
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mHomeActionList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3266
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_f
    if-ge v1, v2, :cond_3b

    .line 3267
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mHomeActionList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3266
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 3269
    :cond_3b
    const-string v3, "HomeKeyDoubleClick"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3270
    monitor-exit p0

    .line 3271
    return-void

    .line 3270
    .end local v1           #i:I
    .end local v2           #size:I
    :catchall_42
    move-exception v3

    monitor-exit p0
    :try_end_44
    .catchall {:try_start_8 .. :try_end_44} :catchall_42

    throw v3
.end method

.method private reset()V
    .registers 4

    .prologue
    const-string v1, "HomeKeyDoubleClick"

    .line 3247
    const-string v0, "HomeKeyDoubleClick"

    const-string v0, "reset() is called"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3248
    monitor-enter p0

    .line 3249
    :try_start_a
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mPosted:Z

    if-eqz v0, :cond_17

    .line 3250
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mCheckHomeShortDoubleClick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3252
    :cond_17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mSentHomeDownToApp:Z

    .line 3253
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mPosted:Z

    .line 3254
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mHomeActionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3255
    const-string v0, "HomeKeyDoubleClick"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in reset()  after reset, mPosted = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mPosted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  mHomeActionList.size() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mHomeActionList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3256
    monitor-exit p0

    .line 3257
    return-void

    .line 3256
    :catchall_4e
    move-exception v0

    monitor-exit p0
    :try_end_50
    .catchall {:try_start_a .. :try_end_50} :catchall_4e

    throw v0
.end method

.method private singleClickJob()V
    .registers 7

    .prologue
    const-string v5, "WindowManager"

    const-string v4, "HomeKeyDoubleClick"

    .line 3274
    const-string v3, "HomeKeyDoubleClick"

    const-string v3, "singleClickJob() is called."

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3279
    const/4 v1, 0x0

    .line 3281
    .local v1, incomingRinging:Z
    :try_start_c
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->getTelephonyService()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 3282
    .local v2, telephonyService:Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_16

    .line 3283
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_15} :catch_23

    move-result v1

    .line 3289
    .end local v2           #telephonyService:Lcom/android/internal/telephony/ITelephony;
    :cond_16
    :goto_16
    if-eqz v1, :cond_2d

    .line 3290
    const-string v3, "WindowManager"

    const-string v3, "Ignoring HOME; there\'s a ringing incoming call."

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3306
    :goto_1f
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mSentHomeDownToApp:Z

    .line 3307
    return-void

    .line 3285
    :catch_23
    move-exception v3

    move-object v0, v3

    .line 3286
    .local v0, ex:Landroid/os/RemoteException;
    const-string v3, "WindowManager"

    const-string v3, "RemoteException from getTelephonyService()"

    invoke-static {v5, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16

    .line 3297
    .end local v0           #ex:Landroid/os/RemoteException;
    :cond_2d
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mSentHomeDownToApp:Z

    if-nez v3, :cond_3e

    .line 3298
    const-string v3, "HomeKeyDoubleClick"

    const-string v3, "  in singleClickJob(), mSentHomeDownToApp is false. Now call launchHomeFromHotKey()"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3299
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->launchHomeFromHotKey()V

    goto :goto_1f

    .line 3301
    :cond_3e
    const-string v3, "HomeKeyDoubleClick"

    const-string v3, "  in singleClickJob(), mSentHomeDownToApp is true. now set mSentHomeDownToApp to false and do nothing."

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f
.end method


# virtual methods
.method public addAction(IIZ)V
    .registers 7
    .parameter "action"
    .parameter "repeatCount"
    .parameter "canceled"

    .prologue
    const-string v2, "HomeKeyDoubleClick"

    .line 3184
    const-string v0, "HomeKeyDoubleClick"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addAction() is called.  action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  canceled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3185
    monitor-enter p0

    .line 3187
    const/4 v0, 0x1

    if-ne p1, v0, :cond_32

    :try_start_28
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mHomeActionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_32

    .line 3188
    monitor-exit p0

    .line 3205
    :goto_31
    return-void

    .line 3191
    :cond_32
    if-nez p3, :cond_36

    if-eqz p2, :cond_45

    .line 3192
    :cond_36
    const-string v0, "HomeKeyDoubleClick"

    const-string v1, "in addAction(), action is canceled OR repeatCount is not zero. now call reset()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3193
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->reset()V

    .line 3194
    monitor-exit p0

    goto :goto_31

    .line 3204
    :catchall_42
    move-exception v0

    monitor-exit p0
    :try_end_44
    .catchall {:try_start_28 .. :try_end_44} :catchall_42

    throw v0

    .line 3197
    :cond_45
    :try_start_45
    const-string v0, "HomeKeyDoubleClick"

    const-string v1, "in addAction(), now add"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3198
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mHomeActionList:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3200
    if-nez p1, :cond_62

    .line 3201
    const-string v0, "HomeKeyDoubleClick"

    const-string v1, "in addAction(), down event. now call postCheckRunnable()."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3202
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->postCheckRunnable()V

    .line 3204
    :cond_62
    monitor-exit p0
    :try_end_63
    .catchall {:try_start_45 .. :try_end_63} :catchall_42

    goto :goto_31
.end method

.method public postCheckRunnable()V
    .registers 5

    .prologue
    const-string v1, "HomeKeyDoubleClick"

    .line 3169
    const-string v0, "HomeKeyDoubleClick"

    const-string v0, "postCheckRunnable() is called"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3170
    monitor-enter p0

    .line 3171
    :try_start_a
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mPosted:Z

    if-nez v0, :cond_2d

    .line 3172
    const-string v0, "HomeKeyDoubleClick"

    const-string v1, "in postCheckRunnable(), now posting."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3173
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mCheckHomeShortDoubleClick:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mPostDelay:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 3174
    const-string v0, "HomeKeyDoubleClick"

    const-string v1, "in postCheckRunnable(), posting success."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3178
    :goto_2a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mPosted:Z

    .line 3180
    :cond_2d
    monitor-exit p0

    .line 3181
    return-void

    .line 3176
    :cond_2f
    const-string v0, "HomeKeyDoubleClick"

    const-string v1, "in postCheckRunnable(), posting failure."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 3180
    :catchall_37
    move-exception v0

    monitor-exit p0
    :try_end_39
    .catchall {:try_start_a .. :try_end_39} :catchall_37

    throw v0
.end method

.method public setHomeDownEventSent()V
    .registers 2

    .prologue
    .line 3435
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mSentHomeDownToApp:Z

    .line 3436
    return-void
.end method

.method public startVoiceCommandActivity(Landroid/content/Intent;)V
    .registers 7
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    const-string v1, "CHECK_SCHEDULE_ENABLED"

    const-string v2, "HomeKeyDoubleClick"

    .line 3314
    const/4 v0, 0x0

    .line 3316
    .local v0, isRun:Z
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardOn()Z

    move-result v1

    if-nez v1, :cond_47

    .line 3317
    const/4 v0, 0x1

    .line 3327
    :goto_f
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mSentHomeDownToApp:Z

    if-nez v1, :cond_a1

    .line 3328
    if-eqz v0, :cond_44

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->isDeviceProvisioned()Z

    move-result v1

    if-eqz v1, :cond_44

    .line 3330
    const/4 v1, 0x1

    :try_start_1e
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->checkVoiceCommandActivity(Z)Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 3331
    const-string v1, "HomeKeyDoubleClick"

    const-string v2, "in startVoiceCommandActivity(), use explicit internal Intent"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3332
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->dismissKeyguard()V

    .line 3333
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->collapseQuickPanel()V

    .line 3335
    if-nez p1, :cond_62

    .line 3336
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mIntentExplicit:Landroid/content/Intent;

    const-string v2, "CHECK_SCHEDULE_ENABLED"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3341
    :goto_3b
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mIntentExplicit:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_44
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1e .. :try_end_44} :catch_6b

    .line 3369
    :cond_44
    :goto_44
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mSentHomeDownToApp:Z

    .line 3370
    return-void

    .line 3319
    :cond_47
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isSecure()Z

    move-result v1

    if-nez v1, :cond_5a

    .line 3320
    const-string v1, "HomeKeyDoubleClick"

    const-string v1, "in startVoiceCommandActivity(), Secure lock is off"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3321
    const/4 v0, 0x1

    goto :goto_f

    .line 3323
    :cond_5a
    const-string v1, "HomeKeyDoubleClick"

    const-string v1, "in startVoiceCommandActivity(), Secure lock is in enabled. Do nothing."

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 3338
    :cond_62
    :try_start_62
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mIntentExplicit:Landroid/content/Intent;

    const-string v2, "CHECK_SCHEDULE_ENABLED"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_3b

    .line 3361
    :catch_6b
    move-exception v1

    goto :goto_44

    .line 3343
    :cond_6d
    if-nez p1, :cond_77

    .line 3344
    const-string v1, "HomeKeyDoubleClick"

    const-string v2, "in startVoiceCommandActivity(), User was double clicking Home button. But there is no Samsung voice command app. So do nothing."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44

    .line 3347
    :cond_77
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->checkVoiceCommandActivity(Z)Z

    move-result v1

    if-eqz v1, :cond_99

    .line 3348
    const-string v1, "HomeKeyDoubleClick"

    const-string v2, "in startVoiceCommandActivity(), use external Intent"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3349
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->dismissKeyguard()V

    .line 3350
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->collapseQuickPanel()V

    .line 3354
    const-string v1, "isThisComeFromHomeKeyDoubleClickConcept"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3355
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_44

    .line 3357
    :cond_99
    const-string v1, "HomeKeyDoubleClick"

    const-string v2, "in startVoiceCommandActivity(), There is no voice command activity. do nothing."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_62 .. :try_end_a0} :catch_6b

    goto :goto_44

    .line 3365
    :cond_a1
    const-string v1, "HomeKeyDoubleClick"

    const-string v1, "in startVoiceCommandActivity(), Secure lock is off, but mSentHomeDownToApp is true. now set mSentHomeDownToApp to false and do nothing."

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44
.end method
