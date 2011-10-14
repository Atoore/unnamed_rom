.class Landroid/widget/RemoteViews$SetLaunchButton$1;
.super Ljava/lang/Object;
.source "RemoteViews.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RemoteViews$SetLaunchButton;->apply(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/RemoteViews$SetLaunchButton;


# direct methods
.method constructor <init>(Landroid/widget/RemoteViews$SetLaunchButton;)V
    .registers 2
    .parameter

    .prologue
    .line 316
    iput-object p1, p0, Landroid/widget/RemoteViews$SetLaunchButton$1;->this$1:Landroid/widget/RemoteViews$SetLaunchButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 12
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v8, 0x0

    .line 318
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_56

    :cond_9
    :goto_9
    move v1, v8

    .line 358
    :goto_a
    return v1

    .line 320
    :pswitch_b
    iget-object v1, p0, Landroid/widget/RemoteViews$SetLaunchButton$1;->this$1:Landroid/widget/RemoteViews$SetLaunchButton;

    iput v2, v1, Landroid/widget/RemoteViews$SetLaunchButton;->isPress:I

    goto :goto_9

    .line 324
    :pswitch_10
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v1

    if-nez v1, :cond_9

    .line 325
    iget-object v1, p0, Landroid/widget/RemoteViews$SetLaunchButton$1;->this$1:Landroid/widget/RemoteViews$SetLaunchButton;

    iput v8, v1, Landroid/widget/RemoteViews$SetLaunchButton;->isPress:I

    goto :goto_9

    .line 330
    :pswitch_1b
    iget-object v1, p0, Landroid/widget/RemoteViews$SetLaunchButton$1;->this$1:Landroid/widget/RemoteViews$SetLaunchButton;

    iget v1, v1, Landroid/widget/RemoteViews$SetLaunchButton;->isPress:I

    if-ne v1, v2, :cond_4e

    .line 331
    iget-object v1, p0, Landroid/widget/RemoteViews$SetLaunchButton$1;->this$1:Landroid/widget/RemoteViews$SetLaunchButton;

    iput v8, v1, Landroid/widget/RemoteViews$SetLaunchButton;->isPress:I

    .line 334
    :try_start_25
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 336
    .local v0, context:Landroid/content/Context;
    const/4 v1, 0x0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sec.android.service.statusbar.COLLAPSE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 339
    .local v7, tPI:Landroid/app/PendingIntent;
    invoke-virtual {v7}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x1000

    const/high16 v4, 0x1000

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    :try_end_43
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_25 .. :try_end_43} :catch_44

    goto :goto_9

    .line 343
    .end local v0           #context:Landroid/content/Context;
    .end local v7           #tPI:Landroid/app/PendingIntent;
    :catch_44
    move-exception v1

    move-object v6, v1

    .line 344
    .local v6, e:Landroid/content/IntentSender$SendIntentException;
    const-string v1, "RemoteViews"

    const-string v2, "Cannot send pending intent: "

    invoke-static {v1, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .end local v6           #e:Landroid/content/IntentSender$SendIntentException;
    :cond_4e
    move v1, v2

    .line 350
    goto :goto_a

    .line 355
    :pswitch_50
    iget-object v1, p0, Landroid/widget/RemoteViews$SetLaunchButton$1;->this$1:Landroid/widget/RemoteViews$SetLaunchButton;

    iput v8, v1, Landroid/widget/RemoteViews$SetLaunchButton;->isPress:I

    goto :goto_9

    .line 318
    nop

    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_b
        :pswitch_1b
        :pswitch_10
        :pswitch_50
    .end packed-switch
.end method
