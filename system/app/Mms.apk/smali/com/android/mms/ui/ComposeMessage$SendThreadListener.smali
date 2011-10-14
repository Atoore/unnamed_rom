.class public Lcom/android/mms/ui/ComposeMessage$SendThreadListener;
.super Ljava/lang/Object;
.source "ComposeMessage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SendThreadListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessage;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ComposeMessage;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter "activity"

    .prologue
    .line 989
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessage$SendThreadListener;->this$0:Lcom/android/mms/ui/ComposeMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 990
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 993
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessage$SendThreadListener;->this$0:Lcom/android/mms/ui/ComposeMessage;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessage;->access$2500(Lcom/android/mms/ui/ComposeMessage;Z)V

    .line 994
    return-void
.end method
