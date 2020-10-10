.class public final enum Lcom/google/firestore/v1/Target$TargetTypeCase;
.super Ljava/lang/Enum;
.source "com.google.firebase:firebase-firestore@@21.4.0"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/Target;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TargetTypeCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firestore/v1/Target$TargetTypeCase;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firestore/v1/Target$TargetTypeCase;

.field public static final enum DOCUMENTS:Lcom/google/firestore/v1/Target$TargetTypeCase;

.field public static final enum QUERY:Lcom/google/firestore/v1/Target$TargetTypeCase;

.field public static final enum TARGETTYPE_NOT_SET:Lcom/google/firestore/v1/Target$TargetTypeCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1244
    new-instance v0, Lcom/google/firestore/v1/Target$TargetTypeCase;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "QUERY"

    invoke-direct {v0, v3, v2, v1}, Lcom/google/firestore/v1/Target$TargetTypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firestore/v1/Target$TargetTypeCase;->QUERY:Lcom/google/firestore/v1/Target$TargetTypeCase;

    .line 1245
    new-instance v0, Lcom/google/firestore/v1/Target$TargetTypeCase;

    const/4 v3, 0x3

    const/4 v4, 0x1

    const-string v5, "DOCUMENTS"

    invoke-direct {v0, v5, v4, v3}, Lcom/google/firestore/v1/Target$TargetTypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firestore/v1/Target$TargetTypeCase;->DOCUMENTS:Lcom/google/firestore/v1/Target$TargetTypeCase;

    .line 1246
    new-instance v0, Lcom/google/firestore/v1/Target$TargetTypeCase;

    const-string v5, "TARGETTYPE_NOT_SET"

    invoke-direct {v0, v5, v1, v2}, Lcom/google/firestore/v1/Target$TargetTypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firestore/v1/Target$TargetTypeCase;->TARGETTYPE_NOT_SET:Lcom/google/firestore/v1/Target$TargetTypeCase;

    .line 1242
    new-array v0, v3, [Lcom/google/firestore/v1/Target$TargetTypeCase;

    sget-object v3, Lcom/google/firestore/v1/Target$TargetTypeCase;->QUERY:Lcom/google/firestore/v1/Target$TargetTypeCase;

    aput-object v3, v0, v2

    sget-object v2, Lcom/google/firestore/v1/Target$TargetTypeCase;->DOCUMENTS:Lcom/google/firestore/v1/Target$TargetTypeCase;

    aput-object v2, v0, v4

    sget-object v2, Lcom/google/firestore/v1/Target$TargetTypeCase;->TARGETTYPE_NOT_SET:Lcom/google/firestore/v1/Target$TargetTypeCase;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/firestore/v1/Target$TargetTypeCase;->$VALUES:[Lcom/google/firestore/v1/Target$TargetTypeCase;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1248
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1249
    iput p3, p0, Lcom/google/firestore/v1/Target$TargetTypeCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/google/firestore/v1/Target$TargetTypeCase;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1262
    :cond_0
    sget-object p0, Lcom/google/firestore/v1/Target$TargetTypeCase;->DOCUMENTS:Lcom/google/firestore/v1/Target$TargetTypeCase;

    return-object p0

    .line 1261
    :cond_1
    sget-object p0, Lcom/google/firestore/v1/Target$TargetTypeCase;->QUERY:Lcom/google/firestore/v1/Target$TargetTypeCase;

    return-object p0

    .line 1263
    :cond_2
    sget-object p0, Lcom/google/firestore/v1/Target$TargetTypeCase;->TARGETTYPE_NOT_SET:Lcom/google/firestore/v1/Target$TargetTypeCase;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firestore/v1/Target$TargetTypeCase;
    .locals 1

    .line 1242
    const-class v0, Lcom/google/firestore/v1/Target$TargetTypeCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/Target$TargetTypeCase;

    return-object p0
.end method

.method public static values()[Lcom/google/firestore/v1/Target$TargetTypeCase;
    .locals 1

    .line 1242
    sget-object v0, Lcom/google/firestore/v1/Target$TargetTypeCase;->$VALUES:[Lcom/google/firestore/v1/Target$TargetTypeCase;

    invoke-virtual {v0}, [Lcom/google/firestore/v1/Target$TargetTypeCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firestore/v1/Target$TargetTypeCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 1268
    iget v0, p0, Lcom/google/firestore/v1/Target$TargetTypeCase;->value:I

    return v0
.end method
