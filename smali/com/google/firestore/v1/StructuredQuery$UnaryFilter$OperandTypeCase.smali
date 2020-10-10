.class public final enum Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$OperandTypeCase;
.super Ljava/lang/Enum;
.source "com.google.firebase:firebase-firestore@@21.4.0"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OperandTypeCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$OperandTypeCase;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$OperandTypeCase;

.field public static final enum FIELD:Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$OperandTypeCase;

.field public static final enum OPERANDTYPE_NOT_SET:Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$OperandTypeCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 3318
    new-instance v0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$OperandTypeCase;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "FIELD"

    invoke-direct {v0, v3, v2, v1}, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$OperandTypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$OperandTypeCase;->FIELD:Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$OperandTypeCase;

    .line 3319
    new-instance v0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$OperandTypeCase;

    const/4 v3, 0x1

    const-string v4, "OPERANDTYPE_NOT_SET"

    invoke-direct {v0, v4, v3, v2}, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$OperandTypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$OperandTypeCase;->OPERANDTYPE_NOT_SET:Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$OperandTypeCase;

    .line 3316
    new-array v0, v1, [Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$OperandTypeCase;

    sget-object v1, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$OperandTypeCase;->FIELD:Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$OperandTypeCase;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$OperandTypeCase;->OPERANDTYPE_NOT_SET:Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$OperandTypeCase;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$OperandTypeCase;->$VALUES:[Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$OperandTypeCase;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 3321
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3322
    iput p3, p0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$OperandTypeCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$OperandTypeCase;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3334
    :cond_0
    sget-object p0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$OperandTypeCase;->FIELD:Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$OperandTypeCase;

    return-object p0

    .line 3335
    :cond_1
    sget-object p0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$OperandTypeCase;->OPERANDTYPE_NOT_SET:Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$OperandTypeCase;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$OperandTypeCase;
    .locals 1

    .line 3316
    const-class v0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$OperandTypeCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$OperandTypeCase;

    return-object p0
.end method

.method public static values()[Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$OperandTypeCase;
    .locals 1

    .line 3316
    sget-object v0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$OperandTypeCase;->$VALUES:[Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$OperandTypeCase;

    invoke-virtual {v0}, [Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$OperandTypeCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$OperandTypeCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 3340
    iget v0, p0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$OperandTypeCase;->value:I

    return v0
.end method
