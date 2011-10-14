.class Lcom/nttdocomo/android/areamail/service/internal/AreaMailService$IntRange;
.super Ljava/lang/Object;
.source "AreaMailService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IntRange"
.end annotation


# instance fields
.field public endId:I

.field public startId:I

.field final synthetic this$0:Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;


# direct methods
.method public constructor <init>(Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;II)V
    .registers 4
    .parameter
    .parameter "startId"
    .parameter "endId"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService$IntRange;->this$0:Lcom/nttdocomo/android/areamail/service/internal/AreaMailService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput p2, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService$IntRange;->startId:I

    .line 152
    iput p3, p0, Lcom/nttdocomo/android/areamail/service/internal/AreaMailService$IntRange;->endId:I

    .line 153
    return-void
.end method
