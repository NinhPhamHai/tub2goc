.class public Lch/blinkenlights/android/vanilla/PlaylistTask;
.super Ljava/lang/Object;
.source "PlaylistTask.java"


# instance fields
.field public audioIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public name:Ljava/lang/String;

.field public playlistId:J

.field public query:Lch/blinkenlights/android/vanilla/QueryTask;


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-wide p1, p0, Lch/blinkenlights/android/vanilla/PlaylistTask;->playlistId:J

    .line 48
    iput-object p3, p0, Lch/blinkenlights/android/vanilla/PlaylistTask;->name:Ljava/lang/String;

    return-void
.end method
