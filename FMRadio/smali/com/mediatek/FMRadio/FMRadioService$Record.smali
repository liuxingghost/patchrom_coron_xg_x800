.class Lcom/mediatek/FMRadio/FMRadioService$Record;
.super Ljava/lang/Object;
.source "FMRadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/FMRadio/FMRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Record"
.end annotation


# instance fields
.field mCallback:Lcom/mediatek/FMRadio/FMRadioListener;

.field mHashCode:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2127
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/FMRadio/FMRadioService$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2127
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioService$Record;-><init>()V

    return-void
.end method
