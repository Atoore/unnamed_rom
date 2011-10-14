.class Lcom/android/mms/ui/ConversationList$6;
.super Ljava/lang/Object;
.source "ConversationList.java"

# interfaces
.implements Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationList;
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
    .line 374
    iput-object p1, p0, Lcom/android/mms/ui/ConversationList$6;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentChanged(Lcom/android/mms/ui/ConversationListAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 376
    const-string v0, "Mms/ConversationList"

    const-string v1, "onContentChanged()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$6;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v0}, Lcom/android/mms/ui/ConversationList;->access$500(Lcom/android/mms/ui/ConversationList;)V

    .line 378
    return-void
.end method
