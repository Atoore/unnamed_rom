.class Lcom/android/mms/ui/ComposeMessage$25;
.super Ljava/lang/Object;
.source "ComposeMessage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessage;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessage;)V
    .locals 0
    .parameter

    .prologue
    .line 2876
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessage$25;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2878
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$25;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessage;->access$4700(Lcom/android/mms/ui/ComposeMessage;)V

    .line 2879
    return-void
.end method
