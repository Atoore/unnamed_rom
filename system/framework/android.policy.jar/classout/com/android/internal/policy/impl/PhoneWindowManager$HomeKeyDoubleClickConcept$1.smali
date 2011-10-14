.class Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept$1;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;)V
    .registers 2
    .parameter

    .prologue
    .line 3130
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    const-string v1, "HomeKeyDoubleClick"

    .line 3132
    const-string v0, "HomeKeyDoubleClick"

    const-string v0, "run() is called *****************************************************"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3133
    monitor-enter p0

    .line 3134
    :try_start_a
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;

    #calls: Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->isSingleClick()Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->access$200(Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 3135
    const-string v0, "HomeKeyDoubleClick"

    const-string v1, "-------------------------------single clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3138
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$300(Lcom/android/internal/policy/impl/PhoneWindowManager;)Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->isSystemKeyEventRequested(I)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 3139
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;

    #calls: Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->singleClickJob()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->access$400(Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;)V

    .line 3152
    :cond_2d
    :goto_2d
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;

    #calls: Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->reset()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->access$700(Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;)V

    .line 3153
    monitor-exit p0

    .line 3154
    return-void

    .line 3142
    :cond_34
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;

    #calls: Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->isDoubleClick()Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->access$500(Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 3143
    const-string v0, "HomeKeyDoubleClick"

    const-string v1, "+++++++++++++++++++++++++++++++double clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3146
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mHoldKeyConcept:Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$300(Lcom/android/internal/policy/impl/PhoneWindowManager;)Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->isSystemKeyEventRequested(I)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 3147
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;

    #calls: Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->doubleClickJob()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->access$600(Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;)V

    goto :goto_2d

    .line 3153
    :catchall_58
    move-exception v0

    monitor-exit p0
    :try_end_5a
    .catchall {:try_start_a .. :try_end_5a} :catchall_58

    throw v0
.end method
