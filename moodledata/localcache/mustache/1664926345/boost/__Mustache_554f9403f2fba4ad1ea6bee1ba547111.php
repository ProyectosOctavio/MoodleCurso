<?php

class __Mustache_554f9403f2fba4ad1ea6bee1ba547111 extends Mustache_Template
{
    public function renderInternal(Mustache_Context $context, $indent = '')
    {
        $buffer = '';

        $buffer .= $indent . '
';
        $buffer .= $indent . '<div class="qbank_statistics discriminative_efficiency">
';
        $buffer .= $indent . '    ';
        $value = $this->resolveValue($context->find('discriminative_efficiency'), $context);
        $buffer .= ($value === null ? '' : $value);
        $buffer .= '
';
        $buffer .= $indent . '</div>
';

        return $buffer;
    }
}
