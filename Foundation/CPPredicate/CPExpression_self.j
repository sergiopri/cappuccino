/*
 * CPExpression_self.j
 *
 * Created by cacaodev.
 * Copyright 2010.
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2.1 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA
 */

@import "CPExpression.j"
@import "CPString.j"
@import "CPDictionary.j"

var evaluatedObject = nil;
@implementation CPExpression_self : CPExpression
{
}

+ (id)evaluatedObject
{
    if (evaluatedObject == nil)
        evaluatedObject = [CPExpression_self new];

    return evaluatedObject;
}

- (id)init
{
    [super initWithExpressionType:CPEvaluatedObjectExpressionType];

    return self;
}

- (id)initWithCoder:(CPCoder)coder
{
    return [CPExpression_self evaluatedObject];
}

- (void)encodeWithCoder:(CPCoder)coder
{
}

- (BOOL)isEqual:(id)object
{
    return (object === self);
}

- (id)expressionValueWithObject:(id)object context:(CPDictionary)context
{
    return object;
}

- (CPString)description
{
    return @"SELF";
}

@end

