.class Lcom/android/systemui/statusbar/policy/StatusBarPolicy$6;
.super Ljava/lang/Object;
.source "StatusBarPolicy.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/StatusBarPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V
    .locals 0
    .parameter

    .prologue
    .line 2289
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$6;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 2291
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$6;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$3702(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 2292
    return-void
.end method
