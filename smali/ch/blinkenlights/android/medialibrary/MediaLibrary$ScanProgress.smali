.class public Lch/blinkenlights/android/medialibrary/MediaLibrary$ScanProgress;
.super Ljava/lang/Object;
.source "MediaLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/blinkenlights/android/medialibrary/MediaLibrary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScanProgress"
.end annotation


# instance fields
.field public changed:I

.field public isRunning:Z

.field public lastFile:Ljava/lang/String;

.field public seen:I

.field public total:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
