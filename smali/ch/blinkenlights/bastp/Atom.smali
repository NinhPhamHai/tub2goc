.class Lch/blinkenlights/bastp/Atom;
.super Ljava/lang/Object;
.source "Mp4File.java"


# instance fields
.field length:I

.field name:Ljava/lang/String;

.field start:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JI)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lch/blinkenlights/bastp/Atom;->name:Ljava/lang/String;

    .line 38
    iput-wide p2, p0, Lch/blinkenlights/bastp/Atom;->start:J

    .line 39
    iput p4, p0, Lch/blinkenlights/bastp/Atom;->length:I

    return-void
.end method
