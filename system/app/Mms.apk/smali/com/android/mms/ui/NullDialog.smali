.class public Lcom/android/mms/ui/NullDialog;
.super Ljava/lang/Object;
.source "NullDialog.java"

# interfaces
.implements Landroid/content/DialogInterface;


# static fields
.field private static instance:Lcom/android/mms/ui/NullDialog;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public static getInstance()Lcom/android/mms/ui/NullDialog;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/android/mms/ui/NullDialog;->instance:Lcom/android/mms/ui/NullDialog;

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Lcom/android/mms/ui/NullDialog;

    invoke-direct {v0}, Lcom/android/mms/ui/NullDialog;-><init>()V

    sput-object v0, Lcom/android/mms/ui/NullDialog;->instance:Lcom/android/mms/ui/NullDialog;

    .line 19
    :cond_0
    sget-object v0, Lcom/android/mms/ui/NullDialog;->instance:Lcom/android/mms/ui/NullDialog;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 24
    return-void
.end method

.method public dismiss()V
    .locals 0

    .prologue
    .line 28
    return-void
.end method
