.class Lcom/android/systemui/statusbar/policy/StatusBarPolicy$8;
.super Ljava/lang/Object;
.source "StatusBarPolicy.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->showDialog()V
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
    .line 2314
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$8;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 2316
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$8;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$3800(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V

    .line 2317
    return-void
.end method
