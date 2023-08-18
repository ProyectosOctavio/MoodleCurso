<?php

class __Mustache_1a5119a3aebc89c42d0694315e8da8c6 extends Mustache_Template
{
    public function renderInternal(Mustache_Context $context, $indent = '')
    {
        $buffer = '';

        $buffer .= $indent . '
';
        $buffer .= $indent . '<div class="qbank_statistics facility_index">
';
        $buffer .= $indent . '    ';
        $value = $this->resolveValue($context->find('facility_index'), $context);
        $buffer .= ($value === null ? '' : $value);
        $buffer .= '
';
        $buffer .= $indent . '</div>
';

        return $buffer;
    }
}
