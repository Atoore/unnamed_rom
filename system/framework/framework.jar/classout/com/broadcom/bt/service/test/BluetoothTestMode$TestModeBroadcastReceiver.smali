.class Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothTestMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/test/BluetoothTestMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TestModeBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;


# direct methods
.method private constructor <init>(Lcom/broadcom/bt/service/test/BluetoothTestMode;)V
    .registers 2
    .parameter

    .prologue
    .line 587
    iput-object p1, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, -0x1

    const-string v8, "STATUS"

    const-string v6, "MODE"

    .line 592
    invoke-virtual {p0}, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeBroadcastReceiver;->abortBroadcast()V

    .line 594
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 595
    .local v0, action:Ljava/lang/String;
    const-string v4, "com.broadcom.bt.app.test.action.ON_BTLD_API_CMD_IND"

    sget v5, Lcom/broadcom/bt/service/test/BluetoothTestMode;->ACTION_PREFIX_LENGTH:I

    #calls: Lcom/broadcom/bt/service/test/BluetoothTestMode;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v4, v0, v5}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$200(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 597
    iget-object v4, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    #getter for: Lcom/broadcom/bt/service/test/BluetoothTestMode;->mBluetoothTestModeEventHandler:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 598
    .local v2, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2b3

    .line 599
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 600
    .local v3, instance:I
    iget-object v4, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    #getter for: Lcom/broadcom/bt/service/test/BluetoothTestMode;->mBluetoothTestModeEventHandler:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;

    .line 602
    .local v1, callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;
    const-string v4, "CMD"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "LENGTH"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "PAYLOAD"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v6

    invoke-interface {v1, v4, v5, v6}, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;->onBtldApiCmdInd(II[B)V

    goto :goto_24

    .line 606
    .end local v1           #callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;
    .end local v2           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v3           #instance:I
    :cond_5b
    const-string v4, "com.broadcom.bt.app.test.action.ON_ENTER_DUT_MODE"

    sget v5, Lcom/broadcom/bt/service/test/BluetoothTestMode;->ACTION_PREFIX_LENGTH:I

    #calls: Lcom/broadcom/bt/service/test/BluetoothTestMode;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v4, v0, v5}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$300(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_9d

    .line 608
    iget-object v4, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    #getter for: Lcom/broadcom/bt/service/test/BluetoothTestMode;->mBluetoothTestModeEventHandler:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 609
    .restart local v2       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_73
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2b3

    .line 610
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 611
    .restart local v3       #instance:I
    iget-object v4, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    #getter for: Lcom/broadcom/bt/service/test/BluetoothTestMode;->mBluetoothTestModeEventHandler:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;

    .line 613
    .restart local v1       #callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;
    const-string v4, "STATUS"

    invoke-virtual {p2, v8, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-interface {v1, v4}, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;->onEnterDUTMode(I)V

    goto :goto_73

    .line 616
    .end local v1           #callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;
    .end local v2           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v3           #instance:I
    :cond_9d
    const-string v4, "com.broadcom.bt.app.test.action.ON_ENTER_TEST_MODE"

    sget v5, Lcom/broadcom/bt/service/test/BluetoothTestMode;->ACTION_PREFIX_LENGTH:I

    #calls: Lcom/broadcom/bt/service/test/BluetoothTestMode;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v4, v0, v5}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$400(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_df

    .line 618
    iget-object v4, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    #getter for: Lcom/broadcom/bt/service/test/BluetoothTestMode;->mBluetoothTestModeEventHandler:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 619
    .restart local v2       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_b5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2b3

    .line 620
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 621
    .restart local v3       #instance:I
    iget-object v4, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    #getter for: Lcom/broadcom/bt/service/test/BluetoothTestMode;->mBluetoothTestModeEventHandler:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;

    .line 623
    .restart local v1       #callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;
    const-string v4, "MODE"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-interface {v1, v4}, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;->onEnterTestMode(I)V

    goto :goto_b5

    .line 626
    .end local v1           #callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;
    .end local v2           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v3           #instance:I
    :cond_df
    const-string v4, "com.broadcom.bt.app.test.action.ON_EXIT_DUT_MODE"

    sget v5, Lcom/broadcom/bt/service/test/BluetoothTestMode;->ACTION_PREFIX_LENGTH:I

    #calls: Lcom/broadcom/bt/service/test/BluetoothTestMode;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v4, v0, v5}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$500(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_121

    .line 628
    iget-object v4, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    #getter for: Lcom/broadcom/bt/service/test/BluetoothTestMode;->mBluetoothTestModeEventHandler:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 629
    .restart local v2       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_f7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2b3

    .line 630
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 631
    .restart local v3       #instance:I
    iget-object v4, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    #getter for: Lcom/broadcom/bt/service/test/BluetoothTestMode;->mBluetoothTestModeEventHandler:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;

    .line 633
    .restart local v1       #callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;
    const-string v4, "STATUS"

    invoke-virtual {p2, v8, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-interface {v1, v4}, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;->onExitDUTMode(I)V

    goto :goto_f7

    .line 636
    .end local v1           #callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;
    .end local v2           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v3           #instance:I
    :cond_121
    const-string v4, "com.broadcom.bt.app.test.action.ON_EXIT_TEST_MODE"

    sget v5, Lcom/broadcom/bt/service/test/BluetoothTestMode;->ACTION_PREFIX_LENGTH:I

    #calls: Lcom/broadcom/bt/service/test/BluetoothTestMode;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v4, v0, v5}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$600(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_163

    .line 638
    iget-object v4, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    #getter for: Lcom/broadcom/bt/service/test/BluetoothTestMode;->mBluetoothTestModeEventHandler:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 639
    .restart local v2       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_139
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2b3

    .line 640
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 641
    .restart local v3       #instance:I
    iget-object v4, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    #getter for: Lcom/broadcom/bt/service/test/BluetoothTestMode;->mBluetoothTestModeEventHandler:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;

    .line 643
    .restart local v1       #callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;
    const-string v4, "MODE"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-interface {v1, v4}, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;->onExitTestMode(I)V

    goto :goto_139

    .line 645
    .end local v1           #callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;
    .end local v2           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v3           #instance:I
    :cond_163
    const-string v4, "com.broadcom.bt.app.test.action.ON_ENABLE_BTSNOOP"

    sget v5, Lcom/broadcom/bt/service/test/BluetoothTestMode;->ACTION_PREFIX_LENGTH:I

    #calls: Lcom/broadcom/bt/service/test/BluetoothTestMode;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v4, v0, v5}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$700(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1a5

    .line 647
    iget-object v4, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    #getter for: Lcom/broadcom/bt/service/test/BluetoothTestMode;->mBluetoothTestModeEventHandler:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 648
    .restart local v2       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_17b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2b3

    .line 649
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 650
    .restart local v3       #instance:I
    iget-object v4, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    #getter for: Lcom/broadcom/bt/service/test/BluetoothTestMode;->mBluetoothTestModeEventHandler:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;

    .line 652
    .restart local v1       #callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;
    const-string v4, "MODE"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-interface {v1, v4}, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;->onEnableBtSnoop(I)V

    goto :goto_17b

    .line 654
    .end local v1           #callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;
    .end local v2           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v3           #instance:I
    :cond_1a5
    const-string v4, "com.broadcom.bt.app.test.action.ON_GET_BTSNOOP_STATE"

    sget v5, Lcom/broadcom/bt/service/test/BluetoothTestMode;->ACTION_PREFIX_LENGTH:I

    #calls: Lcom/broadcom/bt/service/test/BluetoothTestMode;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v4, v0, v5}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$800(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1e7

    .line 656
    iget-object v4, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    #getter for: Lcom/broadcom/bt/service/test/BluetoothTestMode;->mBluetoothTestModeEventHandler:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 657
    .restart local v2       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_1bd
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2b3

    .line 658
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 659
    .restart local v3       #instance:I
    iget-object v4, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    #getter for: Lcom/broadcom/bt/service/test/BluetoothTestMode;->mBluetoothTestModeEventHandler:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;

    .line 661
    .restart local v1       #callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;
    const-string v4, "MODE"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-interface {v1, v4}, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;->onGetBtSnoopState(I)V

    goto :goto_1bd

    .line 663
    .end local v1           #callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;
    .end local v2           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v3           #instance:I
    :cond_1e7
    const-string v4, "com.broadcom.bt.app.test.action.ON_GET_TEST_MODE"

    sget v5, Lcom/broadcom/bt/service/test/BluetoothTestMode;->ACTION_PREFIX_LENGTH:I

    #calls: Lcom/broadcom/bt/service/test/BluetoothTestMode;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v4, v0, v5}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$900(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_229

    .line 665
    iget-object v4, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    #getter for: Lcom/broadcom/bt/service/test/BluetoothTestMode;->mBluetoothTestModeEventHandler:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 666
    .restart local v2       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_1ff
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2b3

    .line 667
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 668
    .restart local v3       #instance:I
    iget-object v4, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    #getter for: Lcom/broadcom/bt/service/test/BluetoothTestMode;->mBluetoothTestModeEventHandler:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;

    .line 670
    .restart local v1       #callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;
    const-string v4, "MODE"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-interface {v1, v4}, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;->onGetTestMode(I)V

    goto :goto_1ff

    .line 672
    .end local v1           #callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;
    .end local v2           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v3           #instance:I
    :cond_229
    const-string v4, "com.broadcom.bt.app.test.action.ON_SET_TEST_MODE"

    sget v5, Lcom/broadcom/bt/service/test/BluetoothTestMode;->ACTION_PREFIX_LENGTH:I

    #calls: Lcom/broadcom/bt/service/test/BluetoothTestMode;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v4, v0, v5}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$1000(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_26b

    .line 674
    iget-object v4, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    #getter for: Lcom/broadcom/bt/service/test/BluetoothTestMode;->mBluetoothTestModeEventHandler:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 675
    .restart local v2       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_241
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2b3

    .line 676
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 677
    .restart local v3       #instance:I
    iget-object v4, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    #getter for: Lcom/broadcom/bt/service/test/BluetoothTestMode;->mBluetoothTestModeEventHandler:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;

    .line 679
    .restart local v1       #callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;
    const-string v4, "MODE"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-interface {v1, v4}, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;->onSetTestMode(I)V

    goto :goto_241

    .line 681
    .end local v1           #callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;
    .end local v2           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v3           #instance:I
    :cond_26b
    const-string v4, "com.broadcom.bt.app.test.action.ON_TX_RX_TEST"

    sget v5, Lcom/broadcom/bt/service/test/BluetoothTestMode;->ACTION_PREFIX_LENGTH:I

    #calls: Lcom/broadcom/bt/service/test/BluetoothTestMode;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z
    invoke-static {v4, v0, v5}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$1100(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2b3

    .line 683
    iget-object v4, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    #getter for: Lcom/broadcom/bt/service/test/BluetoothTestMode;->mBluetoothTestModeEventHandler:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 684
    .restart local v2       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_283
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2b3

    .line 685
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 686
    .restart local v3       #instance:I
    iget-object v4, p0, Lcom/broadcom/bt/service/test/BluetoothTestMode$TestModeBroadcastReceiver;->this$0:Lcom/broadcom/bt/service/test/BluetoothTestMode;

    #getter for: Lcom/broadcom/bt/service/test/BluetoothTestMode;->mBluetoothTestModeEventHandler:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/broadcom/bt/service/test/BluetoothTestMode;->access$100(Lcom/broadcom/bt/service/test/BluetoothTestMode;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;

    .line 688
    .restart local v1       #callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;
    const-string v4, "MODE"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "STATUS"

    invoke-virtual {p2, v8, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-interface {v1, v4, v5}, Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;->onTx_Rx_Test(II)V

    goto :goto_283

    .line 692
    .end local v1           #callback:Lcom/broadcom/bt/service/test/IBluetoothTestModeEventHandler;
    .end local v2           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v3           #instance:I
    :cond_2b3
    return-void
.end method
