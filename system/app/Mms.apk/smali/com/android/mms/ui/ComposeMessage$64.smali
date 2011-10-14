.class Lcom/android/mms/ui/ComposeMessage$64;
.super Ljava/lang/Object;
.source "ComposeMessage.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessage;->MakeToButtons(Ljava/lang/String;Z)I
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
    .line 7060
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessage$64;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 7062
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$64;->this$0:Lcom/android/mms/ui/ComposeMessage;

    check-cast p1, Lcom/android/mms/ui/ToButton;

    .end local p1
    invoke-static {v0, p1}, Lcom/android/mms/ui/ComposeMessage;->access$10800(Lcom/android/mms/ui/ComposeMessage;Lcom/android/mms/ui/ToButton;)V

    .line 7063
    const/4 v0, 0x1

    return v0
.end method
