.class final enum Lcom/android/internal/policy/impl/GlassLockScreen$Status;
.super Ljava/lang/Enum;
.source "GlassLockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/GlassLockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/policy/impl/GlassLockScreen$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/policy/impl/GlassLockScreen$Status;

.field public static final enum Normal:Lcom/android/internal/policy/impl/GlassLockScreen$Status;

.field public static final enum SimLocked:Lcom/android/internal/policy/impl/GlassLockScreen$Status;

.field public static final enum SimMissing:Lcom/android/internal/policy/impl/GlassLockScreen$Status;

.field public static final enum SimMissingLocked:Lcom/android/internal/policy/impl/GlassLockScreen$Status;

.field public static final enum SimPukLocked:Lcom/android/internal/policy/impl/GlassLockScreen$Status;


# instance fields
.field private final mShowStatusLines:Z


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 98
    new-instance v0, Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    const-string v1, "Normal"

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/policy/impl/GlassLockScreen$Status;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/policy/impl/GlassLockScreen$Status;->Normal:Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    .line 103
    new-instance v0, Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    const-string v1, "SimMissing"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/GlassLockScreen$Status;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/policy/impl/GlassLockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    .line 109
    new-instance v0, Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    const-string v1, "SimMissingLocked"

    invoke-direct {v0, v1, v4, v3}, Lcom/android/internal/policy/impl/GlassLockScreen$Status;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/policy/impl/GlassLockScreen$Status;->SimMissingLocked:Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    .line 115
    new-instance v0, Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    const-string v1, "SimPukLocked"

    invoke-direct {v0, v1, v5, v2}, Lcom/android/internal/policy/impl/GlassLockScreen$Status;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/policy/impl/GlassLockScreen$Status;->SimPukLocked:Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    .line 120
    new-instance v0, Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    const-string v1, "SimLocked"

    invoke-direct {v0, v1, v6, v2}, Lcom/android/internal/policy/impl/GlassLockScreen$Status;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/internal/policy/impl/GlassLockScreen$Status;->SimLocked:Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    .line 94
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    sget-object v1, Lcom/android/internal/policy/impl/GlassLockScreen$Status;->Normal:Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/policy/impl/GlassLockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/policy/impl/GlassLockScreen$Status;->SimMissingLocked:Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/policy/impl/GlassLockScreen$Status;->SimPukLocked:Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/policy/impl/GlassLockScreen$Status;->SimLocked:Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/internal/policy/impl/GlassLockScreen$Status;->$VALUES:[Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .registers 4
    .parameter
    .parameter
    .parameter "mShowStatusLines"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .prologue
    .line 124
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 125
    iput-boolean p3, p0, Lcom/android/internal/policy/impl/GlassLockScreen$Status;->mShowStatusLines:Z

    .line 126
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/policy/impl/GlassLockScreen$Status;
    .registers 2
    .parameter "name"

    .prologue
    .line 94
    const-class v0, Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    return-object p0
.end method

.method public static values()[Lcom/android/internal/policy/impl/GlassLockScreen$Status;
    .registers 1

    .prologue
    .line 94
    sget-object v0, Lcom/android/internal/policy/impl/GlassLockScreen$Status;->$VALUES:[Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    invoke-virtual {v0}, [Lcom/android/internal/policy/impl/GlassLockScreen$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/policy/impl/GlassLockScreen$Status;

    return-object v0
.end method
