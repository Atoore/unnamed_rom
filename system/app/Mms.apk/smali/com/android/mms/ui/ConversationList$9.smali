.class Lcom/android/mms/ui/ConversationList$9;
.super Ljava/lang/Object;
.source "ConversationList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationList;->startAsyncQueryDelayed(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationList;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationList;)V
    .locals 0
    .parameter

    .prologue
    .line 610
    iput-object p1, p0, Lcom/android/mms/ui/ConversationList$9;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 612
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$9;->this$0:Lcom/android/mms/ui/ConversationList;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/mms/ui/ConversationList;->access$1100(Lcom/android/mms/ui/ConversationList;Z)V

    .line 613
    return-void
.end method
