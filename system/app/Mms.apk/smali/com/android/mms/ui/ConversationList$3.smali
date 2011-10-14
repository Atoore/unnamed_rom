.class Lcom/android/mms/ui/ConversationList$3;
.super Ljava/lang/Object;
.source "ConversationList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationList;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;)V
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
    .line 305
    iput-object p1, p0, Lcom/android/mms/ui/ConversationList$3;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$3;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v0}, Lcom/android/mms/ui/ConversationList;->access$400(Lcom/android/mms/ui/ConversationList;)V

    .line 309
    return-void
.end method
